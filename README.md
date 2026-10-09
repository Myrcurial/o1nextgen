# o1nextgen

A general-purpose Z80 bus interposer for the Osborne 1, built around the
Raspberry Pi Pico 2 W (RP2350 + CYW43439 WiFi), plus the research and
reverse-engineering work it enables — and, downstream, a modern-parts
Osborne 1 reproduction (the "O1 Next Generation").

## Goals

The Osborne 1 places all peripherals in memory-mapped banks and the Z80
has a simple, slow (4 MHz) external bus. A passive/active interposer
between the Z80 and its socket, connected to a Pico 2 over USB, enables:

1. **Bus analyzer** (passive): cycle-accurate capture of address/data/
   control traffic, streamed over USB — hardware equivalent of emulator
   machine-state introspection.
2. **Peripheral synthesizer** (active): emulate period hardware —
   RT-60A real-time clock, SCREEN-PAC 80/104-column video, IEEE-488
   "Drive C" ramdisk/storage, CoPower-88 mailbox interface.
3. **CPU emulation shim**: virtual CoPower-88 (8088) so original SWP
   software runs on machines without the (rare) physical board.

### Networked peripherals (Pico 2 W)

C64 Ultimate-style: rich browser UI on the Pico 2 W's HTTP server, plus a
small CP/M-side utility for in-machine control — no local mods required.

4. **Floppy interposer / image library** (Gotek / FlashFloppy analogue):
   interrupt the Shugart bus between motherboard and drives; mount
   `.IMD`/`.HFE` images to either drive bay, or to "Drive C" as a
   persistent RAM disk. Image library managed over WiFi (browser) or via
   a CP/M `MOUNT.COM` talking to the Pico through a mailbox port.
5. **WiFi modem** (Zimodem-style): Hayes-compatible AT command set +
   telnet, presented via the Osborne's memory-mapped 6850 ACIA registers
   (bank 2). Works with period comm programs (Kermit, XMODEM, etc.).
   **Extended scope (#56):** SSH transport (ESP32-class Zimodem fork) and
   baud-rate buffering — also designed as a *severable module* usable
   standalone on the MODEM (P1) port. Ref: https://github.com/bozimmerman/Zimodem
6. **Virtual printer**: capture Centronics-mode output on the IEEE-488
   port and render to PDF emulating a period 9-pin Epson MX-80 —
   two fonts, double-wide, italics, bold, underline; *no* graphics
   printout (ESC K/L) support. PDFs served over the HTTP interface.

> Timing note: CYW43 radio activity adds jitter. Bus capture and MFM
> floppy emulation run pinned to core1/PIO with WiFi IRQs fenced off,
> or WiFi is gated during capture/flux windows.

## Projects this supports

- **SWP CoPower-88 driver recovery for Osborne 1** — Kaypro and Zorba
  drivers exist; the Osborne version does not. Diff the known drivers,
  extract the host↔8088 protocol, port to the Osborne BIOS.
- **IEEE-488 mass storage** — Pico-based GPIB device emulating the
  "Drive C" ramdisk / period hard-disk products, with an updated O1
  boot disk.
- **Real-time clock** — emulate the RT-60A so original software works
  on unmodified machines.
- **USB keyboard adapter (#47)** — standalone RP2040 board on the P4
  keyboard connector: plug in any USB HID keyboard, no other mods.
  Doubles as the matrix-injection firmware for the interposer's
  web-KVM personality (#45).
- **O1 Next Generation (#49/#52)** — modern-parts Osborne 1
  reproduction running original ROMs/software, in two form factors:
  a 1:1 mainboard replacement for a stock chassis, and a ~8 cm thick
  "lunchbox" portable (O1A blue/grey industrial design, 8" 4:3 LCD,
  USB-C PD / 18650 power). See `hardware/o1ng/`.
- **FATCOPY (#51)** — native CP/M↔MS-DOS FAT12 (360K) file-copy
  utility; a PIP sibling for exchanging files with PC diskettes.

## What's changed since this README was first written

Phase 0 research (#1) has largely landed; see `docs/` and `research/`:

- **O1 mainboard memory + I/O map extracted** from the Rev E schematic
  (#40/#41) — `docs/o1-memory-io-map.md`.
- **MODEM (P1) port documented** (#57): it is **TTL, not RS-232** —
  DE-9P feeding the 6850 ACIA directly, with an asymmetric *bipolar*
  RXD input — the clean attach point for the WiFi modem module.
- **P4 keyboard pinout corrected** (#48): O1A plug has 24 holes (inner
  20 mate); **pin 19 = +12V** via jumper J6 + R21 — power source for
  the USB keyboard adapter.
- **Logic family settled** (#54): all O1s are NMOS Z80s → **74AHCT/HCT**
  level shifting (replaces the earlier 74LVC245 note below). Interposer
  gets its **own dedicated 5 V feed** (sized for WiFi bursts).
- **Clocking documented** (#55): one-oscillator design + the "2x
  business turbo" option (and why baud buffering in #56 matters).
- **Disk tooling built** (#2/#34): TD0 decompressor + CP/M filesystem
  extractor in `tools/`; Kaypro CoPower-88 disks extracted; CoPower-88
  host protocol inferred from Kaypro vs Zorba (#36). Upstream cpmtools
  kpiv misread tracked in #35.
- **Peripheral analyses done**: Drive C GPIB ramdisk (#33), RT-60A RTC
  (#37), OCC1 ACT-1982 Z80-interposer winchester (#32).
- **Interposer prior-art survey** (#31) and **photo survey** of the
  host machine (#38) complete.
- **Osborne1FloppyAdapter KiCad project archived** with provenance (#50)
  — `research/osborne1/floppy-adapter/`.
- **Lunchbox concept render** (#53) — `docs/design/`.
- New scope filed: web-KVM console (#45), char-gen ROM capture (#44),
  G2 multi-format diskette support (#30), 1:1 replacement board +
  lunchbox case/power research (#52), FATCOPY (#51), SSH modem (#56).

## Repository layout

- `research/` — collected documentation, disk images, schematics
  - `research/copower88/kaypro/` — Kaypro CoPower-88 CP/M + MS-DOS disks,
    extracted CP/M contents + disassemblies
  - `research/copower88/zorba/`  — Zorba SWP disks, schematics (611-0003),
    system guide, advertisement
  - `research/drive_c/`          — Drive C IEEE-488 ramdisk image + manual
  - `research/rtc/`              — RT-60A real-time clock disk + manual
  - `research/harddisk/`         — OCC1 hard disk driver disk image
  - `research/osborne1/`         — O1 Technical Manual, mainboard schematic
    (Rev E), modem/serial + keyboard pinout sources, archived
    Osborne1FloppyAdapter KiCad project
  - `research/screenpac/`        — SCREEN-PAC service manual
  - `research/pictures/`         — high-res photos of the host machine
    (mainboard w/ double-density upgrade, SCREEN-PAC, CoPower-88 top/bottom,
    interposer)
- `docs/` — working notes and analysis: O1 memory/I/O map, modem/serial
  pinouts, CoPower-88 protocol + schematics, Drive C protocol, RT-60A
  register map, OCC1 hard disk analysis, interposer prior-art survey,
  photo survey, research-gap decisions, lunchbox concept renders
- `hardware/` — hardware device definitions (see `hardware/README.md`):
  Z80 interposer, front-panel UI pod, USB keyboard adapter, severable
  WiFi modem module, floppy adapter, O1 Next Generation reproduction
- `firmware/` — on-device firmware, one folder per component (see
  `firmware/README.md`): RP2350 interposer personalities (bus analyzer,
  RTC, printer, floppy, Drive C/GPIB, ScreenPac video, KVM, CoPower-88
  shim, web UI), ESP32 Zimodem fork, RP2040 keyboard matrix
- `software/` — Osborne-side CP/M software (see `software/README.md`):
  MOUNT.COM, FATCOPY, CoPower-88 driver, updated boot disk; plus the
  no-new-code deliverables (existing period drivers/configs, docs only)
- `tools/`   — disk image pipeline: TD0 decompressor + CP/M filesystem
  extractor (`cpmfs.py`, `edsk2raw.py`, `extract_all.sh`);
  `tools/trace-analyzer/` (planned) host-side bus trace capture;
  `tools/research/` for keep-worthy research/one-off code

## Hardware notes

- Z80 @ 4 MHz; RP2350 samples synchronously off the CPU clock via PIO.
- Target board: **Pico 2 W** (RP2350 + WiFi) — networked peripherals
  need the radio; the analyzer/synth personalities work on either.
- Level shifting: Z80 bus is 5V, RP2350 is 3.3V. **Settled: 74AHCT /
  74HCT** — all O1s are NMOS Z80s (production ended 1983; CMOS Z84C00
  didn't ship until 1985). AHCT/HCT is correct in both directions
  against NMOS I/O; 74LVC-class is marginal on tired NMOS outputs.
- Power: interposer gets its **own dedicated 5 VDC feed** near the Z80
  socket, sized for Pico 2 W WiFi bursts (~300 mA+).
- Filter /RFSH refresh cycles from traces.
- Must be stackable/coexist with SCREEN-PAC and CoPower-88 interposers
  on the fully-loaded machine.

## Sources

- Kaypro CoPower-88 images: retroarchive.org/maslin
- Zorba SWP docs/schematics: zorba.z80.de/swp.htm (ZEPS)
- Drive C, RT-60A, OCC1 hard disk: bitsavers.org/bits/Osborne/Osborne1/
- Osborne 1 Technical Manual (interface pinouts): kev.pulo.com.au
- GPIB reference implementation: NODISKEMU (nils-eilers) / cbmSD (cbmsteve.ca)
