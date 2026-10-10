# rt60a-rtc — RT-60A real-time clock emulation (RP2350)

Emulates the RT-60A RTC so original period software works on unmodified
machines. Pure register model — the easiest personality and a good
first bring-up target for the snoop/poke engine.

Tracks: #18; register map from the virtual reconstruction (#37,
`docs/rt60a-analysis.md`; disassembly #7).

## Definition

- Present the RT-60A register file at its documented port addresses via
  the snoop/poke engine (`../bus-analyzer/`).
- Time source: RP2350 RTC (or core timer), settable from the web UI;
  optionally NTP-synced when WiFi is up.
- Battery-backed behavior emulated in flash so time survives reboots.

## Could we build a physical replica RT-60A instead/too?

Assessment from `docs/rt60a-analysis.md` (#37): **yes, at block level.**

- The manual fully specifies the architecture: OKI **MSM5832/58321**
  CMOS BCD RTC (4-bit bus, address-selected registers), lithium battery
  (DL2420-class, ~1 yr), crystal + trimcap, card-edge onto the IEEE-488
  port with **pass-through**, high-impedance outputs activated by a
  unique handshake sequence, source-handshake mode prerequisite, reset
  via two shortable pins.
- What we *don't* have: the original PCB layout/schematic (photos only
  if a unit surfaces) — a replica is a clean-room redesign to the
  manual's interface spec, not a copy.
- MSM5832 is obsolete but NOS-stock exists; a modern-RTC +
  small-logic/CPLD translation is the fallback.
- **Software is the weak link:** the TD0 dump is damaged (27 bad
  sectors), so the host software is being *reimplemented* from the
  manual regardless — see `software/rt60a-clock/`. That replica
  software then drives both this personality and any physical replica.

Verdict: the virtual personality (this folder) is primary; a physical
replica is a feasible stretch goal once the handshake behavior is
proven against the reimplemented CLOCK.COM.

## Deliverables

- Register emulation module + web-UI time-set endpoint
- Validation notes against the RT-60A manual/software
  (`research/rtc/`)
