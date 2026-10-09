# hardware/

Hardware device definitions for the o1nextgen project. Each subfolder is
one physical device contemplated in the GitHub issues, holding its
interface spec, design decisions, and (eventually) KiCad design files.
Status ranges from "concept definition" to "ready for schematic entry" —
no PCB layouts exist yet (Phase 1, issue #11).

## Devices

| Folder | Device | Issues | Status |
|---|---|---|---|
| `interposer/` | Z80 bus interposer (Rev A through-hole → Rev B SMD) — the core board: bus analyzer + peripheral synthesizer host | #11, #12, #13, #15 | Spec stage; level-shifting & power decisions settled |
| `front-panel-ui/` | Front panel faceplate & UI pod — SD/USB storage, VGA/HDMI out, OLED, FlashFloppy-style controls, modem LED bank | #14 | Concept |
| `usb-keyboard-adapter/` | Standalone RP2040 USB-HID → P4 keyboard adapter ("jam a USB keyboard into an O1"); two power variants: internal +12V (J6) or external powered-hub for no-open-case use | #47 | Reference design defined; spec validation pending |
| `wifi-modem-module/` | Severable WiFi modem (ESP32 Zimodem fork: telnet + SSH, baud buffering) for the MODEM (P1) TTL port; ships with COMM PAC-look case STLs for the left storage pocket | #56, #21, #57 | Concept; P1/DE-9 pinout + levels documented |
| `floppy-adapter/` | Switchable Gotek/physical-drive daughter card on the mainboard floppy connector — two physical drives *or* drive A + Gotek, remote switch, Gotek 5 V power; no cable cutting | #50, #20, #30 | Design defined (inspired by, not copied from, the Loxley hand-wired build) |
| `o1ng/` | O1 Next Generation — modern-parts Osborne 1 reproduction: faithful 1:1 replacement mainboard (socketed DIP-40 Z80, interposer as upgrade path) + fully integrated "lunchbox" portable (8 MHz turbo-capable), shared USB-C PD power architecture | #49, #52, #53, #55 | Research/feasibility; concept render exists |

## Cross-cutting decisions (settled)

- **Level shifting:** 74AHCT/74HCT for anything touching the Z80 bus —
  all O1s are NMOS Z80s (research-gaps #2, resolved 2026-10-09).
- **Interposer power:** dedicated 5 VDC feed near the Z80 socket, sized
  for Pico 2 W WiFi bursts (~300 mA+).
- **Stacking:** the interposer must coexist with SCREEN-PAC and
  CoPower-88 interposers on the fully-loaded host machine.
- **MODEM port (P1) is TTL, not RS-232** — but its RXD is a bipolar
  input; the modem module must swing TX-toward-O1 negative for a clean
  mark. See `docs/o1-modem-serial.md`.
- **P4 keyboard connector:** pin 19 = +12V via jumper J6 + R21 — usable
  to power small adapter boards (see `usb-keyboard-adapter/`).

## Conventions

Each device folder contains a `README.md` with: purpose, host
interfaces, electrical/mechanical constraints, open questions, and links
to the tracking issues and supporting docs. KiCad projects land in the
same folders as `<device>.kicad_pro` when design begins.
