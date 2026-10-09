# wifi-modem-module — severable WiFi modem (ESP32, Zimodem fork)

Hayes-compatible WiFi modem for the Osborne 1, designed as a **severable
module**: usable standalone on the MODEM (P1) port, or as part of the
interposer (where the Pico 2 W personality #21 does the same job via
memory-map snooping instead).

Tracks: #56 (extension of #21). Physical interface documented by #57.

## Definition

- **Base:** Zimodem fork targeting **ESP32** (not ESP8266) — the ESP32
  build already carries the SSH client (`INCLUDE_SSH`), SD shell, FTP,
  SLIP/PPP; ESP8266 lacks the headroom.
- **New O1-specific work on top:**
  1. **SSH as first-class transport** — keys, host verification, session
     management via the web UI; `ssh` from the O1 into a modern host.
  2. **Baud-rate buffering/correction** — decouple O1-side ACIA rate
     from the far-end link rate; makes the 2× business turbo (#55)
     usable and quietly corrects the factory 600/2400 → 650/2600 quirk.

## Host interface — MODEM port (P1, DE-9P)

**TTL levels, not RS-232** — the port feeds straight into the 6850 ACIA
(status `2A00H` / data `2A01H`), bypassing the RS-232 level shifters.

- 1 GND · 2 TXD (TTL) · 3 NC · 4 MSB (open-collector) · 5 CTS ·
  6 RXD (**bipolar input**, −0.5…−10 V = 1) · 7 +12V via R21 22Ω ·
  8 MCB (TTL, low = suppress output) · 9 RI (TTL)
- **Asymmetric levels:** TXD/MCB/RI are plain TTL, but **RXD is bipolar**
  (LM1458 + 1N5231B zener front-end) — the module must swing
  TX-toward-O1 **negative** for a clean mark. Needs in-hardware
  validation; a small charge-pump or transistor level stage is expected.
- On-board P1 header carries DE-9 pin numbers straight through
  (schematic sheet 7); 2×5 IDC orientation to be confirmed on a real
  board (same validation class as #47's P4).

## Power

+12V available on DE-9 pin 7 (via R21) — same power trick as the
keyboard adapter; on-board regulator to 3.3 V for the ESP32.

## Enclosure

The module ships with STLs for a **"COMM PAC-look" case** that fits in
the **left floppy storage pocket** — period-authentic Osborne
industrial design so it reads as original kit, not a modern dongle.
Deliverables: `case/*.stl` (top/bottom shells, LED light-pipe window)
alongside the PCB. Case design should accommodate the DE-9P pigtail and
leave the pocket usable with the keyboard closed.

## References

- `docs/o1-modem-serial.md` (authoritative pinout + levels)
- `docs/o1-memory-io-map.md` §"6850 ACIA detail"
- Upstream: https://github.com/bozimmerman/Zimodem
