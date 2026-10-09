# Provenance — Osborne1FloppyAdapter capture

- **What:** archived snapshot of the `WayneVisser/Osborne1FloppyAdapter` KiCad
  project — a passive adapter that lets a Gotek floppy emulator replace an Osborne 1
  drive, accounting for the O1's non-standard power-over-floppy-cable.
- **Source:** https://github.com/WayneVisser/Osborne1FloppyAdapter (branch `main`)
- **Captured:** 2026-10-09 (local), via `curl` of the raw files:
  `README.md`, `LICENSE`, `FloppyAdapter.sch` (schematic — the pin mapping),
  `FloppyAdapter.kicad_pcb` (board layout).
- **Author / license:** Wayne Visser; see `LICENSE` in this folder (the project is
  shared under Attribution-ShareAlike per the PCBWay mirror). Our capture is an
  archival safety copy with attribution preserved, not a fork.
- **Why archived:** this is the reference design for the floppy side of #49
  (modern-parts replica) and for #20 (floppy interposer). It documents the O1's
  "Shugart-like" interface — 34-pin IDC at the mainboard/DD daughtercard, card-edge at
  the drive, with **+5V and +12V routed to the drive over the cable's otherwise-unused
  pins** — and that a Gotek's +5V can be taken straight off the cable (jumper S1 only).
  The companion field report on termination/pull-up pitfalls (A: drive 150Ω, B: none)
  is Richard Loxley's "Osborne Restoration part 12/13" series
  (https://www.richardloxley.com/2018/04/23/osborne-restoration-part-12-usb-floppy-emulator-gotek-hxc/) —
  not archived here yet; the URL is recorded in case it is needed.
- **Status:** verbatim capture of the named files, unmodified. If the upstream repo is
  re-fetched, record the new date here.
