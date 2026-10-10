# rt60a-clock — RT-60A host software replica (CP/M)

The RT-60A's software side: `CLOCK.COM` (resident clock hook),
`CLKSET`, and the phantom-display driver. The original TD0 dump is
**damaged** (`research/rtc/RT-60A.TD0`: 27 bad sectors, extraction
failed), so this component is a **reimplementation from the Operator's
Manual** (`research/rtc/RT-60A_Manual.pdf`, software release 2.5) per
the virtual reconstruction in `docs/rt60a-analysis.md` (#37).

Tracks: #7 (disassembly — blocked by the damaged dump), #37, feeds #28
(boot disk integration: CLOCK.COM replaces AUTOST.COM in the boot
chain).

## What the manual specifies (buildable behavior)

- Installed by patching the boot disk to call **CLOCK.COM instead of
  AUTOST.COM** on cold and warm boot; OS relocated **1 KB lower** to
  make room for resident clock code above the BIOS.
- Hooks the **60 Hz interrupt vector at 0xEFF8**; counts 60 ticks, then
  reads the clock ~once/second, converts to binary + ASCII, chains to
  the original handler.
- **Phantom Display**: on-screen clock updated every 60th tick via Z80
  block-transfer screen sensing (~15% CPU cost — make it optional).
- **Handshake discipline:** clock outputs stay high-impedance until a
  unique handshake sequence activates them (designed not to disturb
  IEEE-488/Centronics devices); port must be in source-handshake mode;
  reads deferred to the next tick if an interrupt collides. Our
  firmware personality (`firmware/rt60a-rtc/`) must implement the same
  handshake so this software is identical for real and virtual clocks.

## Deliverables

- `CLOCK.COM`, `CLKSET.COM` + Z80 source
- Boot-chain patch notes for #28
- Test matrix: virtual RT-60A (interposer) vs. replica hardware (if
  built — see `firmware/rt60a-rtc/` for the replica-hardware assessment)
