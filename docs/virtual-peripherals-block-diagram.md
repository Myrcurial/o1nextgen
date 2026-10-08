# O1 Interposer — Virtual Peripherals: Bus & Address-Space Block Diagram

How the RP2350 interposer sits on the Z80 bus and where each virtual
peripheral lives in the Osborne 1 memory and I/O maps.

## 1. Where the interposer physically sits

The Osborne 1 exposes the Z80 on a 40-pin DIP socket. Like the
CoPower-88 and the OCC ScreenPac, the interposer **plugs into the Z80
socket** and the Z80 plugs into the interposer — so it sees (and can
drive) every bus cycle.

```mermaid
flowchart TB
    subgraph MB["Osborne 1 mainboard"]
        ZSKT["40-pin Z80 socket<br/>(A0-A15, D0-D7,<br/>MREQ/IORQ/RD/WR/M1,<br/>RFSH, HALT, INT, NMI, RESET, CLK)"]
        ROM["4KB BIOS ROM<br/>0000-0FFF"]
        RAM["64KB DRAM<br/>(banked)"]
        VRAM["Video RAM<br/>F000-FFFF window"]
        IO["Onboard I/O<br/>(FDC, PIO, SIO, KBD)"]
        ZSKT --- ROM & RAM & VRAM & IO
    end

    subgraph INTP["RP2350 Interposer (in Z80 socket)"]
        direction TB
        Z80["Original Z80A<br/>(NMOS, 4 MHz)<br/>reinstalled here"]
        BUF["74LVC245 buffers /<br/>level shifters<br/>(5V Z80 <-> 3.3V RP2350)"]
        PIO["RP2350 PIO + DMA<br/>bus sniffer / driver"]
        MCU["RP2350 cores<br/>cycle decoder +<br/>peripheral firmware"]
        WIFI["WiFi / USB<br/>stream out"]
        Z80 <--> BUF <--> PIO <--> MCU --> WIFI
    end

    ZSKT <-."A/D/MREQ/IORQ/RD/WR<br/>tapped + can be driven".-> BUF
```

**Level shifting note (#11):** the host Z80A is NMOS (confirmed, date
8408). NMOS outputs are TTL-ish; NMOS inputs have ~2.0–2.4 V high
thresholds. Use **74AHCT/74HCT toward the Z80** (TTL-compatible inputs)
and **74LVC245 host-side**. ScreenPac used raw 74HC; we prefer AHCT/LVC
for margin across all three target machines.

## 2. Z80 memory map and where virtual devices attach

The O1 banks ROM, RAM, and video in a 64KB space. The interposer claims
a small decode window by **snooping MREQ and either passing through or
overriding** the onboard response.

```mermaid
flowchart LR
    subgraph MAP["Z80 64KB memory map"]
        direction TB
        R0["0000-0FFF<br/>BIOS ROM<br/>(bank 0)"]
        R1["1000-EFFF<br/>System RAM<br/>(shared both banks)"]
        R2["F000-FFFF<br/>Video RAM<br/>(bank-switched window)"]
    end

    subgraph VW["Interposer-claimed window (config)"]
        VP["Virtual-peripheral<br/>mailbox RAM<br/>(e.g. EF00-EFFF)"]
    end

    MCU2["RP2350 firmware"]
    MAP -->|"MREQ+A15-A0 snooped"| DEC{"Decode<br/>match?"}
    DEC -->|"no: pass through"| MB2["Onboard ROM/RAM<br/>respond normally"]
    DEC -->|"yes: assert override,<br/>tri-state host, drive bus"| VP
    VP <--> MCU2
```

### Banking caveat
The O1 video RAM and BIOS share the top of the map via a bank-select
I/O bit. Any memory-resident virtual device must **(a)** live in an
address range the current bank exposes and **(b)** defer to the real
video RAM when it is mapped in. Safest is a small mailbox page in the
always-present RAM region, or an I/O-port device instead (below).

## 3. Z80 I/O map and the virtual-peripheral ports

I/O-mapped devices are cleaner: they never collide with the memory
banks and are how every real O1 peripheral (and the CoPower-88) already
works.

```mermaid
flowchart TB
    subgraph IOP["Z80 I/O space (A7-A0 decoded)"]
        direction TB
        ONB["Onboard ports<br/>FDC / PIO / SIO / KBD<br/>(existing decode)"]
        CP88["CoPower-88 mailbox<br/>0x7E data / 0x7F status<br/>(or 0xFE/0xFF)<br/>*real hw being reverse-eng*"]
        V1["VIRT: net disk<br/>port base B+0..B+3"]
        V2["VIRT: WiFi modem<br/>port base B+4..B+7"]
        V3["VIRT: RTC<br/>port base B+8..B+B"]
        V4["VIRT: virtual MX-80<br/>printer port base B+C..B+F"]
    end

    Z802["Z80<br/>IN/OUT (IORQ+RD/WR)"] --> DEC2{"Port decode<br/>A7-A0"}
    DEC2 --> ONB
    DEC2 --> CP88
    DEC2 -->|"claim free base B"| V1 & V2 & V3 & V4
    V1 & V2 & V3 & V4 <--> FW["RP2350<br/>peripheral firmware"]
    FW --> NET["WiFi / SD /<br/>host stream"]
```

**Port-base strategy:** pick a base `B` in a region the onboard decode
leaves free **and** that does not collide with the CoPower-88's
0x7E/0x7F (Kaypro) or 0xFE/0xFF (Zorba) — so the interposer can
*emulate or coexist with* the real CoPower. The comparator-based decode
on the real CoPower board (the "16-2103" IC, see photo-survey) is the
model for a clean single-port-pair decode.

## 4. The four virtual peripherals (from the roadmap)

| Virtual peripheral | Bus type | Address/Port | Host interface | Back end |
|---|---|---|---|---|
| **Network disk** | I/O ports | base+0..3 (cfg) | command/data/status FIFO | SD image / WiFi block server |
| **WiFi modem** | I/O ports | base+4..7 (cfg) | 8250-ish UART regs | TCP/Telnet over WiFi |
| **RTC** | I/O ports | base+8..B (cfg) | RT-60A-compatible regs (see #7) | RP2350 RTC / NTP |
| **Virtual MX-80 printer** | I/O ports | base+C..F (cfg) | Centronics-style data+strobe | WiFi / USB to host spooler |

Each is an independent decode window; firmware registers a
`{base, mask, read_fn, write_fn}` entry and the cycle decoder dispatches.

## 5. Coexistence with the real peripherals being reverse-engineered

```mermaid
flowchart LR
    subgraph REAL["Real hardware (reverse-eng targets)"]
        CP["CoPower-88<br/>0x7E/0x7F"]
        DC["Drive C<br/>IEEE-488 ramdisk"]
        RTC["RT-60A<br/>RTC"]
        ACT["ACT hard disk<br/>OCC1"]
    end
    subgraph VIRT["Interposer emulation"]
        VCP["virtual CoPower"]
        VDC["virtual Drive C"]
        VRTC["virtual RTC"]
        VACT["virtual HD"]
    end
    REAL -->|"sniff real cycles<br/>to learn protocol"| LEARN["RP2350<br/>capture"]
    LEARN --> VIRT
    VIRT -->|"later: replace real hw<br/>on same ports"| HOST["O1 runs unchanged<br/>software"]
```

The interposer first **passively sniffs** each real device to pin its
protocol (the reverse-engineering phase), then can **emulate** it on the
same decode so the original software runs against the virtual version.
