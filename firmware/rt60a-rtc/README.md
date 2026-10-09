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

## Deliverables

- Register emulation module + web-UI time-set endpoint
- Validation notes against the RT-60A manual/software
  (`research/rtc/`)
