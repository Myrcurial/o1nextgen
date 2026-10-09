# floppy-adapter — switchable Gotek/physical-drive daughter card

A daughter card that mounts over the mainboard / double-density board
floppy connector and makes **three drives available, two active**: both
original drives, *or* drive A + Gotek, selected by a user-accessible
switch. All interception happens at the mainboard-end connector — the
OEM floppy IDC cable is never cut or modified.

Inspiration (not a copy): Richard Loxley's Osborne restoration series —
[part 14](https://www.richardloxley.com/2018/04/24/osborne-restoration-part-14-usb-floppy-emulator-a-semi-permanent-solution/)
and [part 15](https://www.richardloxley.com/2018/04/25/osborne-restoration-part-15-usb-floppy-emulator-finishing-off/)
(also a YouTube series) — which proved the concept with a spaghetti of
hand-cut Dupont cables, an extension cable with a severed drive-select
line, and a DPDT switch + 5 V relay soldered onto the Gotek itself.
This design moves all of that work onto a PCB at the connector end of
the cable, where it belongs.

Tracks: #50 (archival of prior art), feeds #20 (floppy interposer
personality) and #30 (G2 multi-format support).

## Design

- **Mezzanine mount:** plugs onto the mainboard (or DD-board) 34-pin
  floppy header; the OEM floppy cable re-plugs into a pass-through
  34-pin connector on the daughter card. Fully reversible, no
  modifications to the machine or its cables.
- **Second 34-pin connector:** routes the floppy bus out to a Gotek
  (FlashFloppy) mounted in one of the floppy storage pockets.
- **Switching:** drive-select B (pin 12) is routed on-card either to
  the OEM-cable pass-through (physical drive B) or to the Gotek
  connector. The remote switch lead carries only a low-current logic
  select line to an on-card switch element (relay or 74CBT-class bus
  switch) — the switch itself is a plain panel-mount SPST, trivially
  mounted next to the Gotek in the storage pocket.
- **Gotek power:** dedicated 5 VDC connection on the Gotek connector,
  fed via an on-card load switch so the Gotek can be fully depowered
  in "both physical drives" mode.
- **Drive A is never switched** — it stays on the pass-through, so the
  machine always boots from a physical disk if desired.

## Signals carried to the Gotek

(Per the blog's audit — 11 lines plus power; the card routes the full
bus to be safe.)

| 34-pin | Signal |
|---|---|
| 8 | Index |
| 12 | Drive select B (**switched**) |
| 18 | Direction |
| 20 | Step |
| 22 | Write data |
| 24 | Write gate |
| 26 | Track 0 |
| 28 | Write protect |
| 30 | Read data |
| odds | Ground |
| — | +5 V (switched, on-card) |

## Lessons from the reference build (designed in, here)

- **Power-switching a Gotek is subtle.** Switching only +5 V fails —
  the O1's pulled-up signal lines parasitically power the board;
  switching only GND makes the *other* drive unreliable (shared +5 V
  reference with floating ground). The blog's fix was switching both
  rails with a DPDT plus a 5 V relay for drive select. We solve this
  properly on-card: high-side load switch for Gotek 5 V and a
  bus-switch/relay for drive select, so the remote switch handles no
  power at all.
- **Gotek physical fit:** with its top cover removed a Gotek fits a
  floppy storage pocket; top-facing headers make it too tall — plan a
  right-angle/side connection or direct-wire pads on the ribbon.
- **Cable egress:** a 34-pin ribbon won't pass the pocket ventilation
  slots; the daughter card should output the Gotek run on a slimmer
  cable (only the needed signals + power) that does.
- OLED display mods and FlashFloppy display-detect quirks are the
  user's Gotek-side choice, out of scope for the card.

## Open questions

- Mounting: piggyback footprint vs. standoffs over the DD board;
  confirm keep-outs against the mainboard schematic
  (`research/osborne1/OCC1_1A2011-00_Schem_RevE.pdf`) and host photos
  (`research/pictures/`).
- Exact mainboard floppy header pinout vs. standard Shugart ordering.
- Interaction with the interposer's floppy personality (#20): document
  which device owns the bus in each configuration.
- G2 upgrade (#30): believed BIOS/DPB-only, nothing at the connector —
  confirm.

## References

- `research/osborne1/floppy-adapter/` — archived Osborne1FloppyAdapter
  KiCad project (connector/pinout prior art; **not** this design)
- `research/osborne1/OCC1_1A2011-00_Schem_RevE.pdf`
- Richard Loxley, Osborne Restoration parts 13–15 (concept origin)
