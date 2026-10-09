# Research archive — sources and safety copies

This directory is the project's **research archive**: the documentation,
disk images, and photographs that the reverse-engineering and design work
under `docs/` and the GitHub issues depend on.

**These files are reserved as safety copies of the documentation necessary
to complete this project.** They are committed in-repo on purpose: upstream
archives move, go offline, or drop files, and this project cannot finish
without these specific documents. If an upstream link dies, the in-repo
copy is authoritative. Please do not "clean up" large PDFs or disk images
from this tree — their presence here is the point.

Where each item was sourced is recorded below, so provenance is preserved
alongside the copies.

## osborne1/ — Osborne 1 mainboard documentation

| File | What it is | Sourced from |
|---|---|---|
| `2F00153-01_Osborne1TechnicalManual_1982.pdf` (19 MB) | Osborne 1 Technical Manual, 1982. No text layer — image-only scan. Theory of operations, banking, I/O, video, disk, keyboard. | [bitsavers](https://bitsavers.trailing-edge.com/pdf/osborne/osborne1/2F00153-01_Osborne1TechnicalManual_1982.pdf) |
| `OCC1_1A2011-00_Schem_RevE.pdf` (2.1 MB) | Mainboard schematic set, OCC drawing 1A2011-00 Rev E. Sheets 1–3 are the disk analog board (DWG 1A3004), sheet 4+ the main logic board. | [bitsavers](https://bitsavers.org/pdf/osborne/osborne1/OCC1_1A2011-00_Schem_RevE.pdf) (also mirrored as `Osborne_1_Schematics_1A2011-00_Rev_E.pdf` on RetroTechCollection/Internet Archive) |
| `keyboard/osborne_keyboard_pinout.html` + `keyboard/PROVENANCE.md` | Verbatim capture of the pinouts.ru Osborne 1 keyboard page: P4 pinout (incl. pin 19 = +12V via J6+R21) and the full key matrix map. Used by #45/#47. | [pinouts.ru](https://old.pinouts.ru/InputCables/osborne_keyboard_pinout.shtml), captured 2026-10-08 (provenance in the folder) |
| `floppy-adapter/` (README, LICENSE, `.sch`, `.kicad_pcb`, PROVENANCE.md) | Snapshot of WayneVisser's Osborne1FloppyAdapter KiCad project — passive Gotek adapter documenting the O1's "Shugart-like" floppy interface (power over the cable's unused pins). Used by #20/#49. | [github.com/WayneVisser/Osborne1FloppyAdapter](https://github.com/WayneVisser/Osborne1FloppyAdapter), captured 2026-10-09 (provenance in the folder) |
| `modem/o1techman-interface-extract.pdf` (1 MB, 10 pp) | Chapter 4 "Osborne 1 Interface Design" extract of the O1 Technical Manual: §4.1 IEEE-488 (P3), §4.2 RS-232 (P2), **§4.3 MODEM (P1)**. Authoritative source for the MODEM DE-9P pinout — **TTL levels, not RS-232** — incl. pin 4 MSB, pin 5 CTS, pin 8 MCB, pin 9 RI, pin 7 +12V via 22Ω. Used by #56 (and #21/#12). | [kev.pulo.com.au/osborne1](https://www.kev.pulo.com.au/osborne1/documents/o1techman.pdf), captured 2026-10-09 |

Basis for `docs/o1-memory-io-map.md` (#40). Both scans are image-only;
extraction is manual (OCR for text pages, visual for schematics).

## inspired-by/ — adjacent projects

`inspired-by/README.md` — other Osborne 1 reinventions (MAME cyberdeck,
Raspberry Pi brain transplant, Loxley's Gotek mod): what they did, and
what we take from each. Contrast defines the project: **we keep the
original machine intact**.

## mx80/ — Epson MX-80 printer references

| File | What it is | Sourced from |
|---|---|---|
| `mx80/Epson_MX-80_Operations_Manual.pdf` | Epson MX-80 operation manual; Appendix 4 (PDF p. 97+) has the character-font tables (6×9 matrix) and ESC code reference. | [Internet Archive / manualsbase](https://dn790002.ca.archive.org/0/items/manualsbase-id-381505/381505.pdf), captured 2026-10-09 |
| `mx80/EPSON_MX-80_Fonts_v1.0.zip` + `mx80/fonts/` | Michael Walden's MX-80 font pack (CC BY-NC-SA 4.0). Convenience cross-check; see the folder README for the double-strike/2×-width caveat. | [mw.rat.bz/MX-80](https://mw.rat.bz/MX-80/), captured 2026-10-09 |

References for the virtual Epson MX-80 printer personality (#19).

## screenpac/ — OCC ScreenPac (80-column upgrade)

| File | What it is | Sourced from |
|---|---|---|
| `2F00040_service_2ndEd_1983.pdf` (12 MB) | Osborne Field Service Manual, 2nd Edition, 1983. Covers the ScreenPac upgrade (Z80 + char-gen socket taps, dual-port video RAM). | [bitsavers](https://bitsavers.trailing-edge.com/pdf/osborne/2F00040-00_Service2ndEdition_1983.pdf) |

The ScreenPac is the mechanical/electrical template for the interposer and
for the video-output (HDMI) personality (#24, #9 photos).

## copower88/ — SWP CoPower-88 (Z80-coprocessor board being reverse-engineered)

| Path | What it is | Sourced from |
|---|---|---|
| `zorba/Co-Power-88guide.pdf`, `zorba/Co-Power-88advert.pdf`, `zorba/611-0003-1..4.pdf` | SWP CoPower-88 user guide, advertisement, and SWP technical document scans (Zorba-flavored set) | [zorba.z80.de](http://zorba.z80.de/files/swp/) — the Zorba Portable Computer archive site |
| `zorba/*.td0`, `kaypro/*.td0` | TeleDisk images of CoPower-88 CP/M-86 / DOS boot disks (Zorba and Kaypro versions) | zorba.z80.de (exact path not recorded in repo history) |
| `zorba/extracted/`, `kaypro/extracted_cpm/`, `*/disasm/` | CP/M files extracted from those images by the project pipeline (#2), and disassemblies of the CoPower RAM-disk/DOS drivers | Derived in-project — not external sources |

Basis for #3/#4/#5 (CoPower-88 protocol analysis).

## drive_c/ — Drive C (IEEE-488 ramdisk, #6)

| Path | What it is | Sourced from |
|---|---|---|
| `Drive_C_Users_Manual.pdf` | Drive C user manual (IEEE-488 virtual disk drive) | Osborne archival site (exact URL not recorded in repo history) |
| `DRIVE_C.IMD` | ImageDisk image of the Drive C utility disk | Imaged in-project from physical media |
| `Drive_C_disk_label.jpg` | Photo of the physical disk label | Project photo (#9 set) |
| `extracted/` | Files extracted from `DRIVE_C.IMD` by the project pipeline (#2) | Derived in-project |

## rtc/ — RT-60A real-time clock (#7)

| Path | What it is | Sourced from |
|---|---|---|
| `RT-60A_Manual.pdf` | RT-60A RTC manual | Osborne archival site (exact URL not recorded in repo history) |
| `RT-60A.TD0` | TeleDisk image of the RT-60A utility disk | Osborne archival site (exact URL not recorded) |

## harddisk/ — ACT/OCC1 hard disk (#8)

| Path | What it is | Sourced from |
|---|---|---|
| `OCC1_HARDDISK.IMD` | ImageDisk image of the OCC1 hard-disk system disk | Imaged in-project from physical media |
| `extracted/` | Files extracted from the image, incl. `hardbios.hex` | Derived in-project |

## pictures/ — machine photographs

`IMG_4856.jpeg` … `IMG_4871.jpeg` — disassembly/mainboard/upgrade-board
photos of the project's own machines (mainboard, double-density upgrade,
ScreenPac, CoPower-88). Taken in-project for #9; these are primary sources,
not copies. Further photo sets are tracked in #39.

## Provenance gaps

Two items predate the issue-tracked Phase-0 workflow and their exact
download URLs were not recorded in git history: the Drive C manual and the
RT-60A manual/TD0. The in-repo copies are the authoritative safety copies;
if either is re-acquired, update this README with the URL.
