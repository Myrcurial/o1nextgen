# screenpac-video — SCREEN-PAC 80/104-column video + HDMI (RP2350)

Emulates the SCREEN-PAC 80/104-column video personality and provides
modern video out (HDMI via RP2350 HSTX/DVI, or VGA resistor DAC via
`hardware/front-panel-ui/`).

Tracks: #24; char-gen ROM context in #44.

## Definition

- Tap the 24-pin char-gen socket (UA15) like the real ScreenPac; **read
  whatever font ROM is actually installed at init** — the personality
  works with early/late stock and Nuevo fonts without bundled ROMs.
- Emulate the SCREEN-PAC register interface so period software (and the
  ScreenPac service-manual behaviors, `research/screenpac/`) work.
- Render framebuffer → DVI/VGA; keep timing on PIO/core1 per the
  radio-jitter rule.
- Also the video source for the KVM console (`../kvm-console/`).

## Open questions

- Char-gen socket pinout confirmation (ScreenPac install pages +
  Rev E schematic; research-gaps #3).
- HDMI vs VGA as the primary output (decided with front-panel hardware).

## Deliverables

- ScreenPac register emulation + renderer
- Font-ROM init reader
- Validation vs. `research/screenpac/2F00040_service_2ndEd_1983.pdf`
