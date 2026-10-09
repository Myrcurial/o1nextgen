# Osborne 1 — Mainboard Memory & I/O Map

Authoritative memory map, I/O decode, and bank-switch behavior extracted from
the Osborne 1 mainboard schematic (OCC `1A2011-00` Rev E) and cross-checked
against the Osborne 1 Technical Manual (`2F00153-01`, 1982) and the MAME
`osborne1.cpp` driver.

Closes issue #40. Unblocks: #11 (hardware), #16–#24 (firmware), the
memory-resident vs pure-I/O decision (gap #15), 6850 ACIA modem (#21, gap #10),
WD179x floppy interposer (#20, gap #11), and ScreenPac personality (#24).

---

## 1. CPU and clocking

| Item | Value |
|---|---|
| CPU | NEC μPD780C (≡ Zilog Z80A), DIP-40, location **UC11** |
| Crystal | 15.9744 MHz (X1) |
| CPU clock | 4 MHz (÷4 via UD3 LS161) |
| Dot clock | 8 MHz |
| Memory / char clock | 2 MHz / 1 MHz |
| Bus width | 8-bit data (DATA0–7), 16-bit address (ADR0–15) |

Wait-state generation: RAM accesses insert wait states (≈375 ns for non-M1
cycles, 188 ns for the first M1); ROM executes without added delay.

## 2. Memory banks

The 64 KB address space is overlaid by **three banks**, selected by the
`ROM MODE*` signal and the `BIT 9` latch (see §4).

### Bank 1 — main RAM ("normal mode")
64 KB of 4116 dynamic RAM. The top 4 KB is dual-purpose as video RAM.

| Range | Contents |
|---|---|
| `0000–3FFF` | RAM (boot ROM overlays the low 16 KB when bank 2 is active) |
| `4000–EFFF` | RAM — CP/M TPA, BDOS/CCP, BIOS live here |
| `F000–FFFF` | Video RAM low 8 bits (128 cols × 32 rows char data) |

### Bank 2 — BIOS ROM + memory-mapped I/O ("shadow mode")
Selected when `ROM MODE*` is active (low). Only `0000–3FFF` is affected;
`4000–FFFF` still reads bank 1 RAM.

| Range | Contents |
|---|---|
| `0000–0FFF` | Monitor ROM (4 KB, 2732 at **UD11**; earlier 2× 2716) |
| `1000–1FFF` | Unused — reads as mirror of the ROM |
| `2000–2FFF` | Memory-mapped I/O window (see §3) |
| `3000–3FFF` | Unused — reads as mirror of `2000–2FFF` |
| `4000–FFFF` | Mirrors bank 1 RAM |

### Bank 3 — video attribute bit ("dim bit")
Selected when `BIT 9` latch is set. A 9th bit per video cell, stored in a
dedicated 4116. Only `F000–FFFF` is affected.

| Range | Contents |
|---|---|
| `F000–FFFF` | Video attribute RAM, 4K×1 (dim attribute = bit 8 of each cell) |

## 3. I/O decode (bank 2, "memory-mapped I/O")

All onboard peripherals are **memory-mapped**, reached through the bank-2
window. Chip-selects are generated from address lines within `2000–2FFF`.

| Address | Device | Chip | Registers |
|---|---|---|---|
| `2100–2103` | Floppy disk controller | Fujitsu MB8877 ≡ WD1793 (**UB7**) | 2100 stat/cmd, 2101 track, 2102 sector, 2103 data |
| `2201–2280` | Keyboard (read) | 81LS95 + 74LS05 (**UE12/13/14**) | One address bit per row: 2201=row0 … 2280=row7; columns on DATA0–7 |
| `2900–2903` | IEEE-488 PIA | MC6821 (**UC7**) | 2900 PA data/dir, 2901 PA ctrl, 2902 PB data/dir, 2903 PB ctrl |
| `2A00–2A01` | Serial / modem ACIA | MC6850 (**UC4**) | 2A00 status(R)/control(W), 2A01 RX(R)/TX(W) |
| `2C00–2C03` | Video PIA | MC6821 (**UC15**) | scroll/offset latches, bell, brightness, dim control |

### 6850 ACIA detail (#21 modem, gap #10)
- Base `2A00`: read = status, write = control. `2A01`: read = RX, write = TX.
- Baud clock from divider **UC3** (÷13) fed by a 2/4 µs tap off the video
  counter (UA13). ACIA (UC4) divides by 16 or 64 → **1200 or 300 baud**.
- Jumper **J1** selects 300/1200; Rev E+ can be re-jumpered to 600/2400.
- Modem status (DTE): MSB (pin 4), MCB (pin 8), RI (pin 9); BIOS `LISTST`
  at `0E12D` returns `0FFH`/`00H`.
- **IRQ0** = ACIA interrupt (one of three IRQ sources; see §5).

### WD179x floppy detail (#20 floppy interposer, gap #11)
- Controller **UB7**, registers `2100–2103` as above.
- Drive-select / density lines are driven from the **video PIA (UC15)**
  outputs (DRIVE1/DRIVE2/DDEN), **not** a dedicated latch — see schematic
  sheet 5. `DDEN` selects double density when the add-on DD board is present.
- Stock format: single-sided single-density, 40 tracks × 10×256-byte sectors
  (102 KB/drive), FM. DD option board adds 5×1024 Osborne-DD, 8×512 IBM,
  18×128 Xerox-820, 9×512 DEC-182 formats.

### Keyboard detail
- 8×8 keyswitch matrix; rows driven on address lines A0–A7 (one-hot),
  columns returned on DATA0–7.
- Read strobes at `2201, 2202, 2204, 2208, 2210, 2220, 2240, 2280`
  (i.e. `2200 + (1<<row)`).
- 14 programmable keys (Ctrl-0…9, four arrows) via BIOS + SETUP.

| `F000–FFFF` | Video attribute RAM, 4K×1 (dim attribute = bit 8 of each cell) |
## 4. Bank switching (the mechanism)

Banking is controlled by **writes to I/O space**, decoded by **UD10**
(LS138) on the two low address bits; the data bus value is **ignored**.

| I/O write | Effect |
|---|---|
| `0x00` | Clear UB4 → `ROM MODE*` low → **select bank 2** (ROM+I/O). Also forced by CPU reset. |
| `0x01` | Preset UB4 → `ROM MODE*` high → **select bank 1** (main RAM), if `MREQ` low. |
| `0x02` | Set `BIT 9` latch (UE10A) high → map **bank 3** (dim bit) into `F000–FFFF`. |
| `0x03` | Clear `BIT 9` latch → map bank 1/2 back into `F000–FFFF`. |

`ROM MODE*` is *also* set by hardware: power-on reset, and the NMI flip-flop
chain (UB6/UB4). Bank selection between 1 and 2 is additionally qualified by
M1 and IRQ-acknowledge conditions via three flip-flops — so interrupt
acknowledge and the front-panel RESET reselect the ROM bank automatically.

> **Interposer note:** because only the two low address bits are decoded and
> data is ignored, *any* `OUT (0),A` / `OUT (1),A` toggles banks. The
> interposer must **never** drive I/O addresses `0x00–0x03`.

## 5. Interrupts

Three IRQ sources into the Z80:
- **IRQ0** — serial ACIA (UC4)
- **IRQ1** — video PIA IRQA (UC15)
- **IRQ2** — IEEE-488 PIA IRQA (UC7)

**NMI** is generated by the front-panel **RESET switch S1** (debounced by
UE20, sequenced through UB6/UB4 on `M1`): NMI restarts the ROM program at
`0000` and forces bank 2. There is **no periodic/60 Hz NMI** — the "60 SEC"
signal is a video-tick line into the video PIA CA1 (used by the console
routine's real-time clock), not an NMI.

## 6. Connector / socket pinouts (mechanical tap points)

### Z80 CPU — DIP-40 (UC11)
Standard Z80A pinout. Key pins for a ScreenPac-style tap:

| Pin(s) | Signal |
|---|---|
| 6 | CLK (4 MHz) |
| 7–10, 12–15 | A4,A3,A5,A6 / A0,A1,A2,A7 |
| 16 | INT |
| 17 | NMI |
| 18 | HALT |
| 19 | MREQ |
| 20 | IORQ |
| 21 | RD |
| 22 | WR |
| 23 | BUSAK |
| 24 | WAIT |
| 25 | BUSRQ |
| 26 | RESET |
| 27 | M1 |
| 28 | RFSH |
| 29–33 | A9,A10,A11,A12,A13 |
| 34–40 | A14,A15,D0,D1,D2,D3,D4 |
| 1–5,11 | A8,D5,D6,D7,GND |

### Character generator ROM — 24-pin (UA15)
2 KB (2716) character ROM at **UA15**, 128 chars × 8×10 in an 8×10 box
(7×9 visible). **Not on the CPU bus** — addressed by (char code + scan line),
output to the video shift register (UA14). This is the second tap point the
ScreenPac personality (#24) uses.

| Pin | Signal |
|---|---|
| 1–8 | A7–A0 (from video latch/scan) |
| 12 | GND |
| 13–21 | O3–O7, A8–A10 |
| 22 | OE |
| 23 | CE |
| 24 | VCC (+5) |

### Other onboard connectors (for reference)
- **P3** — IEEE-488, 26-pin edge (pins 25/26 unused)
- **P2** — RS-232, DB-25 (DTE)
- **P1** — Modem
- **P4** — Keyboard, 20-pin IDC (1=GND, 2–9 rows 4,0,3,6,2,5,1,7, 10–17 cols 0–7, 18 NC, 19=+12V, 20 GND).
  On the later **O1A ("blue/grey")** machines the coiled-cable plug has **24 holes but only the inner
  20 mate with pins**. Pin 19 carries **+12V only if jumper J6 is bridged** (a 2-pin link, open from
  the factory) through **R21 (22Ω)** — the intended way to power an accessory off the keyboard cable.
  Rows are driven low (open-collector inverters, one-hot); columns are pulled up to +5V via a 3.3K
  resistor pack and buffered onto the data bus. Reference: O1 Technical Manual; pinout per
  pinouts.ru (verified against a PCB) — see #47 for the full matrix map.
- **P8** — Floppy drive, 34-pin
- **P5** — Video, 10-pin inline


## 7. Free I/O windows & recommended virtual-peripheral base

The bank-2 I/O window is sparsely decoded; many sub-ranges alias the real
devices. Conservatively **free** (no onboard device) within `2000–2FFF`:

| Range | Status |
|---|---|
| `2000–20FF` | Free |
| `2104–21FF` | Free (above floppy) |
| `2300–28FF` | Free (above keyboard, below IEEE) — **largest clean block** |
| `2904–29FF` | Free (above IEEE PIA) |
| `2A02–2BFF` | Free (above serial, below video PIA) |

> **Caution:** the O1 decode is "sloppy" (MAME) — chip selects do not check
> all address bits, so large regions alias real devices. Treat only
> page-aligned blocks *between* the listed devices as safe, and validate on
> hardware before committing.

### Recommendation
- **Primary virtual-peripheral block: `2300–23FF`** (256 bytes). Clean gap
  between keyboard (`2201–2280`) and IEEE-488 (`2900–2903`). Suggested
  sub-allocation: CoPower-88 emulation, network/modem FIFO, RTC, status regs.
- **Secondary: `2B00–2BFF`** (between serial `2A01` and video PIA `2C00`) if a
  second disjoint window is needed.
- Avoid `0x00–0x03` (bank switch) entirely.
- The interposer should decode **bank-2 I/O space** (memory-mapped) rather
  than Z80 `IN/OUT` port space, since onboard devices are memory-mapped and
  the plain I/O port space `0x00–0xFF` is almost entirely consumed by the
  bank-switch decoder aliases (only low 2 bits decoded → `0x00–0x03` repeats
  every 4 bytes across the whole low port page).

## 8. Decisions this unblocks

- **Gap #15 (memory-resident vs pure I/O):** → **pure I/O**, memory-mapped in
  bank 2 at `2300+`. No need to steal RAM or fight the bank flip-flops.
- **Gap #10 (modem ACIA ports):** → `2A00/2A01` confirmed; the WiFi modem can
  either emulate the 6850 there or live at a `2300+` FIFO with a small BIOS
  hook.
- **Gap #11 (floppy variant):** → MB8877 ≡ WD1793 confirmed; registers at
  `2100–2103`; drive/density selects are PIA-driven (emulate via PIA shadow).
- **#24 (ScreenPac):** → two tap points confirmed: Z80 DIP-40 (UC11) and
  char-gen 24-pin (UA15).

## Sources
- OCC schematic `1A2011-00` Rev E (`research/osborne1/OCC1_1A2011-00_Schem_RevE.pdf`),
  sheets 1–5 (CPU, RAM, video, IEEE-488, serial/disk).
- Osborne 1 Technical Manual `2F00153-01` (1982), ch. 3 (memory), ch. 4
  (interfaces), ch. 5 (video), ch. 7 (disk), ch. 8 (keyboard), ch. 11
  (theory of operations: ROM MODE/bank select, NMI).
- MAME `src/mame/osborne/osborne1.cpp` (bank/I/O map cross-check).
