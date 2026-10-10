# tools/ — disk image and CP/M filesystem tooling

## Pipeline

```
.td0 --[SAMdisk 4]--> .dsk (EDSK) --[edsk2raw.py]--> .raw --[cpmfs.py]--> files
.imd --[disk-analyse]--> .raw --[cpmfs.py]--> files
```

Run everything: `tools/extract_all.sh [path-to-samdisk]`

## Components

- **edsk2raw.py** — EXTENDED CPC DSK (SAMdisk output) to raw CP/M
  sector image. Sorts sectors by R id (handles interleave and Kaypro's
  side-continuous sector numbering: side0 = 0-9, side1 = 10-19).
  `--pad SECTRK,SECLEN` emits fixed-geometry images from partial dumps
  (missing sectors -> 0xE5).
- **cpmfs.py** — read-only CP/M 2.x list/extract (`ls`, `get`,
  `getall`). Explicit geometry presets: `osb1sssd` (Osborne 1 SD:
  40x10x256B FM, boottrk 3, 2K blocks), `kp2x`/`kpiv` (Kaypro DSDD:
  80 logical trk side-per-track x 10 x 512B, boottrk 1, 2K blocks).

## Schematic checking (`check_schematics.py`)

Regenerates each board's netlist with `kicad-cli` and asserts the electrical
invariants the design depends on. Run it before committing any `.kicad_sch`
or `gen_*_sch.py` change:

```
python3 tools/check_schematics.py          # all boards
python3 tools/check_schematics.py -v       # per-net detail
```

Why it exists: a schematic can pass structural ERC and still be electrically
wrong. The interposer generators placed every pin mirrored (`y + py` where
KiCad needs `y - py`), and reva had a '595 sitting directly on top of a '165 —
ERC reported only `label_dangling` / `pin_not_connected`, nothing that named
the fault. Reading the netlist pin by pin found both. What it checks:

- **Datasheet pinouts.** Z80 DIP-40 (pin 11 = +5V, 29 = GND, 30 = A0) on every
  connector/CPU that mates with the O1's socket.
- **Connector pin usage.** The Gotek header carries exactly Loxley's 11 signal
  lines and never a power rail or 4 MHz; drive B is never switched.
- **Sheet geometry.** No two symbol bodies overlap, and no two differently
  named labels sit on the same point (that is a short).
- **No `NC` net.** Labelling unused pins "NC" ties them all together — on reva
  that joined four unused 74AHCT595 totem-pole outputs. Use no-connect flags.
- **ERC budget.** Per-type ceilings; any new violation type or any increase
  fails, so regressions cannot hide in the warning noise. Keyed on the type
  only — KiCad renames checks and moves them between error and warning across
  releases (KiCad 9's `label_dangling` error is KiCad 10's `isolated_pin_label`
  warning), so a severity-keyed budget would pin the gate to one KiCad version.
- **Generator drift.** Regenerates each board and compares netlists, so a
  committed `.kicad_sch` cannot silently diverge from its generator.

CI runs it on every change to `hardware/**/*.kicad_sch` or `gen_*_sch.py`
(`.github/workflows/schematic-check.yml`). Requires `kicad-cli` (KiCad 7+);
set `KICAD_CLI` if it is not on PATH. Standard library only.

## Tool evaluation notes (why this exists)

- **SAMdisk 4** (Simon Owen; built from source, macOS: cmake) —
  decodes TeleDisk TD0 including advanced compression. Cannot write
  IMD; refuses raw output for non-sequential sector ids -> we bridge
  via EDSK. `samdisk copy in.td0 out.dsk`.
- **disk-analyse** (Keir Fraser, Disk-Utilities) — does NOT read TD0,
  but converts IMD -> raw img cleanly and reports per-track format
  (great for unknown disks).
- **libdsk dsktrans** — failed on the Kaypro TD0 ("Bad format" after
  decompression checks) and on SAMdisk EDSK output.
- **cpmtools 2.23** (homebrew cpmls/cpmcp) — worked perfectly for
  Osborne SSSD (`osb1sssd`) raws, but silently misread the Kaypro DSDD
  image (stock `kpiv` def has blocksize 2048 vs actual directory
  structure; even corrected defs produced garbage, cause not fully
  diagnosed — possibly sides/boottrk handling). cpmfs.py replaces it
  for extraction; cpmtools remains handy for quick probes.
- **z80dasm 1.2.0** (brew) — OK for spelunking; linear sweep misaligns
  around data tables.

## Disk format cheat sheet (learned during #2)

- Osborne 1 SD: FM, 40 cyl, 10x256B sectors, R=1..10, boottrk 3,
  dir 64 entries (2K blocks).
- Kaypro 2X/4/10: MFM, 40 cyl x 2 heads, 10x512B per side, R 0-based
  continuous across sides (0-9 / 10-19), physical interleave in R,
  dir at logical track 1 (= cyl 0 head 1), 64 entries, 2K blocks.
- RT-60A.TD0 (bitsavers) is a DAMAGED dump: 27 no-id sectors ignored
  by SAMdisk, most tracks fragmentary; filesystem extraction fails.
  Needs a re-dump (see #7).
