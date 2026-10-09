# inspired-by/ — adjacent projects and why this one is different

Other people's Osborne 1 reinventions that inspired or informed this
project — and the contrast that defines it. **Our approach keeps the
original machine intact**: original Z80, original ROMs, original
software, reversible interposer-based upgrades. These projects took
other paths, and they're worth studying for what they solved well.

## Osborne 1 reborn as a retro cyberdeck (MAME)

- [reddit.com/r/cyberDeck — Osborne 1 reborn as retro cyberdeck](https://www.reddit.com/r/cyberDeck/comments/me5fk9/osborne_1_reborn_as_retro_cyberdeck/)
- Osborne case + form factor, but **completely emulated**: modern
  internals running MAME. Nice reference for display mounting and
  fitting modern panels into the O1 shell; philosophically the opposite
  of o1nextgen (their O1 is a simulation; ours stays silicon-real).

## "Brain transplant" — Raspberry Pi inside the Osborne case

- [hackaday.com — Suitcase computer reborn with Raspberry Pi inside](https://hackaday.com/2018/05/17/suitcase-computer-reborn-with-raspberry-pi-inside/)
- [instructables.com — Raspberry Pi Osborne 1 rebuild](https://www.instructables.com/Raspberry-Pi-Osborne-1-Rebuild/)
- Guts the machine, keeps the case + **original keyboard**, runs a CP/M
  emulator (rather than MAME) on a Pi. Notably includes the **Arduino
  code converting the O1 keyboard matrix to USB — the inverse of our
  `firmware/keyboard-matrix/`** (#47: USB → matrix). Useful reference
  for the O1 matrix map and scan timing, and for keyboard-cable
  handling.

## What we take from each

| Project | Borrowed lesson |
|---|---|
| Cyberdeck (MAME) | Display/panel fitment in the O1 shell; appetite for the form factor |
| Pi brain transplant | O1 keyboard matrix → modern-host code (invertible to our use); CP/M emulator UX expectations |
| Richard Loxley's Gotek mod | See `hardware/floppy-adapter/` — switchable "three drives, two active" concept (we do it at the connector, on a PCB) |

If more adjacent projects turn up (other O1 mods, interposer-class
projects), add them here with a one-line "what we take from it".
