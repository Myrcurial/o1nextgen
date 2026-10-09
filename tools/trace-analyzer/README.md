# trace-analyzer — host-side bus trace capture/analysis (planned)

Host companion to `firmware/bus-analyzer/` (#17): capture the USB trace
stream, decode it into cycle logs, filter, annotate.

## Definition (to be built with the analyzer firmware)

- Capture CLI: USB CDC stream → raw/`.vcd`/decoded text formats.
- Decoder: Z80 bus cycles (opcode fetch, mem R/W, I/O R/W, INT ack),
  with address-range and port filters mirroring the firmware's
  triggers; /RFSH already filtered on-device (counts preserved).
- Annotation: symbol/address labels (BIOS entry points, peripheral
  port bases from `docs/o1-memory-io-map.md`) to make CoPower-88 and
  Drive C bring-up legible.
- Streaming protocol spec shared with the firmware (versioned).

## Uses

- CoPower-88 protocol bring-up + unknown-doorbell trapping (#26, #23)
- Drive C / OCC1 protocol validation (#6, #8)
- General "what is the machine doing" debugging during every
  personality's development
