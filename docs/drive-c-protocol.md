# Drive C: IEEE-488 RAM disk — reverse engineering notes

Source: research/drive_c/DRIVE_C.IMD (Osborne 1 SSDD, FM 10x256, 40trk).
Extracted with cpmtools (`osb1sssd` diskdef) to research/drive_c/extracted/.
Disassembly: z80dasm (see "Tool evaluation" below).

## Files on the disk

| File | Size | Role |
|---|---|---|
| DCL.COM | 6656 | "DRIVEC version 2.08" — driver installer/loader. Loads DFD.SPR, DCA/DCU. "Cannot install driver$Driver is already installed$" |
| DFD.SPR | 2560 | Resident driver (page-relocatable SPR). Contains CCP-style command table (DIR ERA HELP REN SAVE TYPE USER) + BIOS hook code |
| DCA.COM | 9984 | "DCA version 1.85" — assign/configuration |
| DCU.COM | 6272 | "DCU version 1.40" — RAM-disk utility (erase all, directory, files/line config; generates DCUN.COM via SAVE 28) |
| DCQ.COM + DCQ.DAT | 896+128 | "DCQ version 1.22" QUICKPAC — fast boot-time loader; DCLOADED.SYS marker |
| DCQINS.COM | 7296 | QUICKPAC installer (writes boot track via DCL); text by David E. Price |
| AUTOST.COM / DCQAUT.COM | 768 | Auto-starter: submits QUICKPAC at cold boot via $$$.SUB |
| PRN.TST | 7936 | Print test file (likely exercises the print-buffer feature) |
| PIP.COM, XDIR.COM | — | Utilities |

Author: Kenneth M. Toy, (c) 1983 Drive C. Also supports a print buffer
("Bad print buffer parameter, not loaded", "Not enough space for fixed
print buffer"). Osborne-1 only: "cannot be used with the Executive".

## Hardware interface (from DCL.COM disassembly)

The Drive C box hangs off the Osborne 1 **IEEE-488 option port**, driven
by bit-banging the motherboard's memory-mapped 6821 PIA:

- **PIA registers: 0x2900-0x2903** in bank 2 (the ROM/IO bank):
  - 0x2900/0x2901 = port A data / control
  - 0x2902/0x2903 = port B data / control
- **Bank switching: OUT (0x00) = select bank 2 (IO), OUT (0x01) = back
  to bank 1 (RAM)**, DI/EI bracketed. (Same convention as the ACT hard
  disk BIOS — see docs/occ1-harddisk-analysis.md.)
- Transfer loop is per-byte handshaked: write CA2/CB2 control sequences
  0x32/0x36/0x3E (pulse/strobe modes of 6821 CRA/CRB), set DDRs to
  0xFF (output) or 0x00 (input), then `LDI` loops moving 128-byte
  sectors one byte at a time with a strobe toggle between bytes.
- PIA init sequence: CRA=0x32, DDRA=0xFF, CRA=0x36, CRB=0x32,
  DDRB=0xFF, CRB=0x36, then command/address byte into DDRB (0x08...).
  A final phase sets CRA=0x32/0x36, CRB=0x00, DDRB=0xBF, CRB=0x04,
  DDRB=0x02 — i.e. port B partially an input for status handshake.
- No IN/OUT port I/O to the device at all except bank switching
  (single OUT (0xF1) in DFD.SPR under investigation — may be the
  double-density board or a status port).
- DCL contains a Z80 CPU-behavior test snippet (rla/rra/daa/cpl/scf/
  ccf/halt region near 0x0748) and accesses ports 0xD6 (OUT) / 0xDE (IN)
  — likely CPU/speed detection or NMI-related; TBD.

## Open questions (next steps)

1. Command set above the byte transport: device addressing (GPIB
   talk/listen addresses used by the Drive C box), command bytes for
   read/write sector, status query, capacity reporting. Needs a full
   annotated disassembly of DFD.SPR (the resident BIOS-side driver).
2. How DCL patches the O1 BIOS drive table to add C: (BIOS jump table
   hook points; DPB used for the RAM disk).
3. Meaning of OUT (0xF1) in DFD.SPR.
4. PRN.TST / print-buffer feature protocol (print spooling to the
   Drive C box? or spooling to the IEEE-488 printer?).
5. Whether the box speaks real GPIB (SRQ/EOI/ATN semantics) or a
   simplified Centronics-like handshake over the same connector —
   the bit-banged CA2/CB2 strobes suggest the latter is enough to
   emulate a compatible device.

## Tool evaluation

- cpmtools `cpmls`/`cpmcp` with `osb1sssd` diskdef: worked perfectly
  after converting IMD->raw with disk-analyse. One and done.
- z80dasm 1.2.0 (brew): serviceable linear-sweep disassembly but
  misaligns around data tables; fine for spelunking, not for
  publication-quality listing. Consider a scriptable disassembler
  (or manual block hints) for the DFD.SPR deep-dive.
