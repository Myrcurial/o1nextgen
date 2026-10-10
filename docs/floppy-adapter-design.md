# Floppy adapter — switchable Gotek / physical-drive daughter card

Design spec for issue **#62**. Tracks the floppy interposer personality (#20)
and G2 multi-format support (#30). Derived from
`research/osborne1/floppy-adapter/` (Wayne Visser passive adapter + provenance),
Richard Loxley's Osborne Restoration parts 5 and 12–15, and
`hardware/floppy-adapter/README.md`.

> Status: **proposal for review.** Connector genders, the switch element and the
> DS-A pull-up value must be confirmed before KiCad capture (see §8).

## 1. Purpose

Let the user choose, from a front-panel switch, whether the **drive A** position
is served by the physical drive or by a **Gotek** (FlashFloppy) emulator, with
**drive B always present** in both modes. The card sits between the O1
mainboard/DD-board floppy header and the OEM floppy cable; nothing in the machine
or its cable is cut.

Prior art, deliberately **not** copied:

- Wayne Visser's `Osborne1FloppyAdapter` is a **passive** tap — it puts a Gotek
  on the bus alongside the physical drives and switches nothing. We keep its
  pin/rail mapping as the O1 interface reference.
- Richard Loxley's hand-wired build (parts 12–15) proved the concept but needed a
  DPDT switch + a 5 V relay soldered onto the Gotek, plus hand-cut Dupont cable.
  This design moves all of that onto a PCB at the connector end of the cable.

## 2. Osborne 1 floppy interface (34-pin, Shugart-like)

The O1 uses a Shugart-like 34-pin interface, but with **+5 V and +12 V routed to
the drives over otherwise-unused cable pins** — there are no separate drive power
connectors. Pin functions below are transcribed from the archived Wayne Visser
adapter (`research/osborne1/floppy-adapter/FloppyAdapter.sch`); they agree with
Loxley's signal audit and the standard Shugart ordering for the shared signals.
**Confirm against `research/osborne1/OCC1_1A2011-00_Schem_RevE.pdf` before
capture** (README open question).

| Pin(s) | Signal | Notes |
|---|---|---|
| 1,3,5,7,9,19,27,29,31,33 | GND | |
| 11,13,15,17 | +12 V | power-over-cable (physical drives) |
| 21,23,25 | +5 V | power-over-cable (physical drives; tapped for Gotek) |
| 8 | INDEX | |
| 10 | DS-A (drive select A) | **the switched line** — Gotek replaces drive A |
| 12 | DS-B (drive select B) | not switched — drive B stays present |
| 14 | NC | |
| 16 | 4 MHz | O1-specific clock; not used by Gotek |
| 18 | DIRECTION | |
| 20 | STEP | |
| 22 | WRITE DATA | |
| 24 | WRITE GATE | |
| 26 | TRACK 0 | |
| 28 | WRITE PROTECT | |
| 30 | READ DATA | |
| 32 | SIDE SELECT | |
| 34 | LATE | O1-specific |

The Gotek needs only the static/step/data lines plus its drive-select (Loxley's
11-line audit). The card routes that subset to the Gotek header and leaves 4 MHz
and the spare power pins off it.

## 3. Topology

```mermaid
flowchart LR
  MB["O1 mainboard<br/>34-pin floppy header"]
  subgraph CARD["floppy-adapter daughter card"]
    PLUG["J1  2x17 socket (bottom)"]
    CABLE["J2  2x17 header (top)<br/>to OEM cable"]
    GOT["J3  2x17 header (top)<br/>to Gotek signals"]
    PWR["J4  Gotek power<br/>(switched +5V, GND)"]
    SW["J5  panel-switch lead"]
    K1["K1  4PDT relay"]
  end
  DA["Physical drive A<br/>(150 ohm term pack)"]
  DB["Physical drive B<br/>(always present)"]
  GK["Gotek / FlashFloppy<br/>(as drive A)"]

  MB -- "J1 mates header" --> PLUG
  PLUG -- "pass-through (all pins)" --> CABLE
  CABLE --> DA
  CABLE --> DB
  PLUG -- "signals only" --> GOT
  GOT --> GK
  K1 -- "+5V / GND (when Gotek)" --> PWR
  PWR --> GK
  SW -- "coil current only" --> K1
  PLUG -. "DS-A (pin 10) in" .-> K1
  K1 -. "DS-A to physical A" .-> CABLE
  K1 -. "DS-A to Gotek" .-> GOT
```

Everything between J1 and J2 is a **straight pass-through** except pin 10
(DS-A), which is intercepted. The physical drives therefore see an unmodified
cable; the only difference is which device the machine's DS-A reaches.

## 4. Switching design

### 4.1 Drive-select routing (pin 10)
DS-A from the mainboard (J1.10) is the relay common. De-energised it goes to
J2.10 → the physical A drive; energised it goes to J3.10 → the Gotek. Never both,
so the two devices cannot both answer as drive A. DS-B (pin 12) is untouched, so
drive B stays present and selectable in both modes.

### 4.2 Gotek power switching
Loxley's field notes (part 15) are decisive and are the reason this card exists:

- **Switching only +5 V does not turn the Gotek off** — the O1's pulled-up signal
  lines parasitically power the board through its input protection diodes.
- **Switching only GND makes the *other* drive unreliable** — the Gotek's signal
  lines are still referenced to the shared 5 V.
- **Switching both +5 V and GND works.** That is what this card does.

Consequence: the Gotek's **GND and +5 V must arrive only through J4**, *not*
through the J3 header, otherwise switching GND has no effect. J3 carries signals
only.

### 4.3 Switch element — mechanical relay (recommended)
A single **4PDT relay** (3 poles used, 1 spare) does all three switches at once:

| Pole | Contact | Function |
|---|---|---|
| 1 | NO | switched +5 V → Gotek (J4) |
| 2 | NO | switched GND → Gotek (J4) |
| 3 | NC / NO | DS-A → physical A (J2.10) / Gotek (J3.10) |
| 4 | — | spare (e.g. front-panel LED) |

- Coil: 5 V, ~40–70 mA, fed from the cable's +5 V through the panel switch J5.
- De-energised = physical drives (**fail-safe**): a broken/unplugged switch lead
  parks the machine on the physical drives.
- The relay only ever switches a **static DC select line** and the power rails —
  no stepped/data signal passes through the contacts, so contact bounce/bandwidth
  are irrelevant. A mid-switch transient is a single floppy error the machine
  tolerates (per the author's experience).
- Add a flyback diode across the coil and a 10 kΩ pull-down on the coil+ node so
  a disconnected switch is deterministic.
- The panel switch carries only coil current — never drive power, as the existing
  README requires.

### 4.4 Solid-state alternative (optional, smaller/silent)
If the relay is unwanted, the same three functions can be built from silicon:
a P-MOSFET high-side load switch (e.g. AO3401) + N-MOSFET low-side switch
(AO3400/2N7002) for the rails, and a 2:1 analog/bus switch (74HC4053 or
74CBT-class, 5 V-capable) for DS-A, all driven from one logic input. More parts
and more 5 V-level care, but no coil current, no click, and lower profile.
Recommendation: **relay for Rev A**, evaluate solid-state for Rev B.

### 4.5 Termination and pull-ups (why drive A matters)
The O1 terminates the floppy bus with a **150 Ω resistor pack on every signal
line, located in physical drive A** — the drive at the far end of the cable.
Drive B has no termination (Loxley parts 5 and 12). Two consequences:

- The shared signal lines stay terminated in both modes, because only DS-A is
  switched: drive A remains connected to every other line, so its 150 Ω pack
  stays on the bus even when the Gotek is selected.
- **DS-A loses its pull-up in Gotek mode.** The 150 Ω pull-up lives at drive A;
  routing DS-A to the Gotek disconnects it. The Gotek has **1 kΩ pull-ups on most
  lines but none on the drive-select lines** (Loxley part 5), so a floating DS-A
  is exactly the failure Loxley chased for days.

→ **Add an on-card pull-up on the Gotek-side DS-A net** (relay NO contact →
J3.10): **1 kΩ default, with a 150 Ω option** (jumper or second footprint) to
match the O1's own termination. This is the single most important addition to
the original concept, and it exists only because the Gotek replaces drive A
rather than drive B. Loxley tried both 1 kΩ and 150 Ω on the select lines.


## 5. Reference schematic (Rev A, netlist level)

Components:

| Ref | Part | Notes |
|---|---|---|
| J1 | 2×17 socket, 2.54 mm | bottom, mates O1 mainboard header |
| J2 | 2×17 header, 2.54 mm | top, OEM cable → physical drives |
| J3 | 2×17 header, 2.54 mm | top, Gotek (signals only) |
| J4 | 4-pin header (floppy power) | switched +5 V / GND to Gotek |
| J5 | 2-pin header | front-panel switch lead |
| K1 | 4PDT relay, 5 V coil (e.g. Omron G6A-434P) | 3 poles used |
| D1 | 1N4148 | coil flyback |
| R1 | 10 kΩ | coil-node pull-down |
| R3 | 1 kΩ (150 Ω option) | DS-A pull-up, Gotek side (§4.5) |
| R2, D2 | 1 kΩ + LED (optional) | front-panel "Gotek active" indicator |

Connections (pin n of J1 unless stated):

- **Pass-through:** J1.n → J2.n for every pin **except 10**. This carries the
  signals *and* the +5 V / +12 V / GND rails to the physical drives unchanged.
- **DS-A:** J1.10 → K1 pole-3 common. Pole-3 NC → J2.10 (physical A). Pole-3 NO
  → J3.10 (Gotek).
- **DS-A pull-up:** R3 (1 kΩ default; 150 Ω option) from the J3.10 net to +5 V,
  on the Gotek side of the relay (§4.5).
- **Gotek signals:** J1 pins 8, 18, 20, 22, 24, 26, 28, 30 (and optionally 32, 34)
  → the matching pins of J3. J3 pins 12, 14, 16 and all GND/power pins are **NC**.
- **Gotek +5 V:** J1 +5 V (21/23/25) → K1 pole-1 common; pole-1 NO → J4 (+5 V).
- **Gotek GND:** board GND → K1 pole-2 common; pole-2 NO → J4 (GND).
- **Coil:** J1 +5 V → J5.1 → (panel switch) → J5.2 → K1 coil+ ; K1 coil− → GND.
  D1 across the coil (cathode to coil+). R1 from coil+ to GND. Optional R2+D2
  from coil+ to GND for the indicator.

## 6. BOM (Rev A)

| Qty | Item | Notes |
|---|---|---|
| 1 | 4PDT relay, 5 V coil, DIP | Omron G6A-434P or equivalent |
| 1 | 2×17 socket, 2.54 mm, vertical | bottom mezzanine |
| 2 | 2×17 header, 2.54 mm, vertical | top (cable + Gotek) |
| 1 | 4-pin header (floppy power) | Gotek power, right-angle |
| 1 | 2-pin header | panel switch |
| 1 | 1N4148 | flyback |
| 1 | 10 kΩ 0805/TH | coil-node pull-down |
| 1 | 1 kΩ 0805/TH (+150 Ω option) | DS-A pull-up |
| 1 | 1 kΩ + LED | optional indicator |
| 1 | PCB, 2-layer, 1.6 mm | ENIG preferred (relay/contacts, mating) |

## 7. Physical design brief

**Board (PCB).**
- 2-layer, 1.6 mm FR4; ground plane on the bottom layer; +5 V/GND traces
  ≥ 0.5 mm (Gotek ~0.3–0.5 A).
- Envelope to be fixed against the mainboard keep-outs
  (`research/osborne1/OCC1_1A2011-00_Schem_RevE.pdf`) and host photos
  (`research/pictures/`); target a compact card that clears the DD board.
- J1 (socket) on the bottom face, positioned to engage the mainboard 34-pin
  header; add 2 mounting holes/standoffs so the mezzanine cannot rock.
- J2 and J3 on the top face; orient both so the OEM ribbon and the Gotek ribbon
  exit without fouling. Silk-label each connector, mark pin 1, and label
  "O1 IN", "→ DRIVES", "GOTEK", "GOTEK 5V", "SWITCH".

**Gotek mount (3D-printed part).**
- The Gotek (top cover removed) fits a floppy storage pocket; with its top
  headers fitted it is too tall, so connect it by a slim pigtail/direct-wire pads
  rather than plugging a header on top.
- Design a printed bracket/faceplate that holds the Gotek in the pocket at the
  right depth, exposes the USB port, and carries the panel switch. This is the
  "Modification to support Gotek drives with 3D-printed floppy-disk faceplate"
  write-up planned in `site/README.md`.
- Cable egress: a full 34-pin ribbon will not pass the pocket vent slots. Run the
  Gotek on a reduced signal set (the §5 lines + power) on a narrower cable, or
  route through the "Ext Video" port as Loxley did.

**Panel switch.**
- Plain panel-mount SPST (or SPDT for an indicator). 2-wire lead to J5; no drive
  power on the lead. Mount next to the Gotek pocket.

**Reversibility.** No cable or machine modification: unplug the card and the
machine is stock.

## 8. Open questions / decisions
1. **Drive topology — CONFIRMED (user, 2026-10-10):** the switch selects **drive
   A** (physical A ↔ Gotek); **drive B stays present** in both modes.
2. **Connector genders** — confirm the O1 mainboard floppy header is a 34-pin
   *male* header (so J1 is a female socket), and confirm the pin order in §2.
3. **Switch element** — relay (recommended) vs solid-state.
4. **Isolation depth** — accept Loxley's proven "route DS-A + switch both rails",
   or additionally gate the Gotek's shared signal lines for full isolation.
5. **DS-A pull-up value** — 1 kΩ vs 150 Ω (Loxley tried both); confirm on
   hardware. Confirm the 150 Ω pack really is on drive A (schematic + machine).
6. **Gotek drive-select jumper** — jumper the Gotek to respond to the DS0/A
   select (not S1), and confirm against the FlashFloppy docs.
7. **Gotek cable route / bracket** — which pocket and which egress.

## 9. References
- Issue #62 (this design); feeds #20 (floppy interposer), #30 (G2 multi-format).
- `research/osborne1/floppy-adapter/` — Wayne Visser passive adapter + PROVENANCE.
- `research/osborne1/OCC1_1A2011-00_Schem_RevE.pdf` — mainboard schematic.
- `hardware/floppy-adapter/README.md` — concept summary.
- Richard Loxley, Osborne Restoration **part 5** (150 Ω term pack at the far
  drive; Gotek has 1 kΩ on most lines but *not* drive select) and **parts 12–15**
  (A drive has 150 Ω, B has none; DPDT + relay switching lesson).

