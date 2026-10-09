# drive-c-gpib — Drive C IEEE-488 storage personality (RP2350)

Pico-based GPIB device emulating the "Drive C" ramdisk and period
IEEE-488 hard-disk products. When this personality runs, the **original
period driver works unmodified** on the CP/M side — no new Osborne-side
code beyond usage docs (`software/README.md` no-new-code list).

Tracks: #22; protocol from #6 / `docs/drive-c-protocol.md`; OCC1 hard
disk analysis `docs/occ1-harddisk-analysis.md` (#8/#32).

## Definition

- Implement the Drive C GPIB device state machine per
  `docs/drive-c-protocol.md` (extracted from `DRIVE_C.IMD`, #33).
- Storage backing: RAM disk (persistent where possible) and/or image
  files from the library, shared with `../floppy-emulator/`.
- Reference GPIB implementation: NODISKEMU (nils-eilers) / cbmSD
  (cbmsteve.ca).
- Optionally present the OCC1 ACT-1982 winchester behavior as a second
  personality once its protocol write-up is complete (#8).

## Deliverables

- GPIB device emulation module (snoop/poke engine)
- Backing-store integration + web-UI controls
- Compatibility test notes against the original Drive C driver disk
  (`research/drive_c/`)
