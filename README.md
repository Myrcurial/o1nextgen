# o1nextgen

A general-purpose Z80 bus interposer for the Osborne 1, built around the
Raspberry Pi Pico 2 (RP2350), plus the research and reverse-engineering
work it enables.

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

## Projects this supports

- **SWP CoPower-88 driver recovery for Osborne 1** — Kaypro and Zorba
  drivers exist; the Osborne version does not. Diff the known drivers,
  extract the host↔8088 protocol, port to the Osborne BIOS.
- **IEEE-488 mass storage** — Pico-based GPIB device emulating the
  "Drive C" ramdisk / period hard-disk products, with an updated O1
  boot disk.
- **Real-time clock** — emulate the RT-60A so original software works
  on unmodified machines.

## Repository layout

- `research/` — collected documentation, disk images, schematics
  - `research/copower88/kaypro/` — Kaypro CoPower-88 CP/M + MS-DOS disks
  - `research/copower88/zorba/`  — Zorba SWP disks, schematics (611-0003),
    system guide, advertisement
  - `research/drive_c/`          — Drive C IEEE-488 ramdisk image + manual
  - `research/rtc/`              — RT-60A real-time clock disk + manual
  - `research/harddisk/`         — OCC1 hard disk driver disk image
  - `research/pictures/`         — high-res photos of the host machine
    (mainboard w/ double-density upgrade, SCREEN-PAC, CoPower-88 top/bottom,
    interposer)
- `hardware/` — (planned) interposer PCB design (KiCad)
- `firmware/` — (planned) Pico 2 firmware: analyzer, peripheral synth
- `tools/`    — (planned) host-side trace capture/analysis, disk image
  extraction, disassembly scripts

## Hardware notes

- Z80 @ 4 MHz; RP2350 samples synchronously off the CPU clock via PIO.
- Level shifting required: Z80 bus is 5V, RP2350 is 3.3V (74LVC245-class).
- Filter /RFSH refresh cycles from traces.
- Must be stackable/coexist with SCREEN-PAC and CoPower-88 interposers
  on the fully-loaded machine.

## Sources

- Kaypro CoPower-88 images: retroarchive.org/maslin
- Zorba SWP docs/schematics: zorba.z80.de/swp.htm (ZEPS)
- Drive C, RT-60A, OCC1 hard disk: bitsavers.org/bits/Osborne/Osborne1/
- GPIB reference implementation: NODISKEMU (nils-eilers) / cbmSD (cbmsteve.ca)
