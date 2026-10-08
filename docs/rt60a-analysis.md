# RT-60A Real-Time Clock — analysis from Operator's Manual (software release 2.5)

Source: research/rtc/RT-60A_Manual.pdf (JG Communications, Tucson AZ).
The TD0 on bitsavers is a damaged dump (27 bad sectors, extraction
failed); this doc reconstructs the interface from the manual per
user direction: "virtually rebuild from descriptions".

## Hardware

- Plugs into the Osborne 1 **IEEE-488 port** (card-edge), battery
  backed (DL2420/DL2430/CR2320 lithium, ~1 yr), runs standalone.
- Based on **OKI Semiconductor MSM5832 / MSM58321** CMOS RTCs
  (BCD time/date chips, 4-bit bus, address-selected registers).
- **Pass-through**: an output connector + extra circuitry keeps the
  IEEE-488 / Centronics / general-purpose port usable. The clock's
  outputs are normally **high-impedance**; a "special low voltage
  CMOS circuit" recognizes a **unique handshake sequence** from the
  software to activate clock outputs for reading. The handshake is
  designed not to disturb IEEE/Centronics devices.
- Prerequisite: the port must be in **source-handshake mode**
  (Centronics output mode). If not found (or an interrupt hits
  mid-handshake), the read is deferred to the next 1/60 s interrupt.
- Crystal-controlled with a trimcap for speed adjustment.
- Clock reset only by deliberately shorting two vertical pins on the
  board (prompted by CLKSET).
- Bulletin #2 documents a **Drive C modification** — relevant since
  Drive C also uses the IEEE port (6821 PIA bit-bang); protocol clash
  management matters for our interposer coexistence too.

## Host software architecture (CLOCK.COM)

- Installed by changing the boot disk to call **CLOCK.COM instead of
  AUTOST.COM** on both cold and warm boot; OS relocated **1 KB lower**
  to make room for resident clock code above the BIOS.
- Hooks the **interrupt vector word at 0xEFF8** (O1 60 Hz interrupt;
  CTC-driven). Each tick decrements MEMBUFF from 60; at 1 it reads
  the clock (~once/second), translates time to binary + ASCII, stores
  in registers, chains to the original handler.
- **Phantom Display**: on-screen clock updated every 60th via Z80
  block-transfer screen sensing (costs ~15% CPU).
- **At Trap**: patches the BIOS **LIST output jump**; intercepts `@T`
  / `@D` in printer output and expands to time/date (char after
  @T/@D must be space or CR).
- File time/date stamping patches installed at boot (BDOS-level).
- Warm-boot reload needed for stamping patches; 1.4x ROM can bypass
  (bulletin #7).

## Software-visible register map (offset from pointer at 0x0040)

Pointer word at **0x0040** points to DAY; add offsets (hex offsets
shown relative to the pointer):

| Offset | Name       | Contents |
|--------|------------|----------|
| -15 (FFF1 rel) | FLAGS   | bit0: phantom on; bits3,4: at-trap use; bit5: at-trap on; bit7: software off |
| -14 (FFF2) | TIMEFLAG    | bit0: 0=12h/1=24h; bit1: 1=AM/PM off; bit2: 1=seconds suppressed |
| -13 (FFF3) | DATE (7 B)  | YYMMDD, DOW order; bit2 of 10s-of-days = leap year. **Only always-current date rep** |
| -6  (FFFA) | TIME (6 B)  | raw BCD unpacked 12-hour, HHMMSS; bit2 of first byte: 1=PM. Raw from clock chip |
|  0 (0000)  | DAY         | binary day (SD: FF/BB = invalid) |
|  1 | MONTH               | binary |
|  2 | YEAR                | binary (0x53 = 1983) |
|  3 | HOURS               | binary, 24 h, 0 = midnight |
|  4 | MINUTES             | binary |
|  5 | SECONDS             | binary |
|  6 | MEMBUFF             | 60→1 decrementer; sticks at 1 when reads failing (port not in output mode etc.) |
|  7 | TIMEASCII           | NUL-terminated ASCII time string (chosen format) |
| 19 (0013)  | DATEASCII   | NUL-terminated date string |

If the pointer word itself contains 0xFF or 0xBB, clock software is
not running (or CLOCK.COM wasn't executed at last boot).

## Conditions that block clock reads (from HELP)

1. Disabled interrupts; 2. peripherals off/off-line; 3. port set as
   input for extended periods; 4. DAV/ATN held low; 5. printer status
   lines wired to NRFD (IEEE pin 13) — Centronics cables should have
   **no connections on pins 13 and 21**; 6. long periods not in IEEE
   source-handshake mode / long data transfers.

## WordStar WSMODS patch (DD systems)

UCNSTA JMP → 0DD06H, INCON JMP → 0DD09H, third JMP → 0DD0CH
(SD: 0E106H/0E109H/0E10CH; original DD values 0E506H/0E509H/0E50CH).

## Implications for interposer RTC emulation (#21)

- We can emulate the RT-60A faithfully WITHOUT its exact hardware
  handshake: implement the MSM5832 register semantics and the 0x40
  pointer ABI, plus the IEEE-port handshake activation observed at
  the PIO lines. For software compatibility, matching the **memory
  ABI + interrupt cadence + At Trap/BIOS hooks** matters more than
  the internal CMOS circuitry.
- MSM5832 register set (from datasheet, 4-bit regs): sec 1/10, min
  1/10, hr 1/10 (with AM/PM + 12/24), day-of-week, day 1/10, month
  1/10, year 1/10 — matches the BCD layouts above.
- Drive C coexistence: both devices live on the same IEEE port; the
  interposer can present BOTH virtual devices with proper arbitration
  (Drive C's 6821 bit-bang vs clock handshake) — worth an
  interference test in #29.
