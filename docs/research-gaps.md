# Research gaps — what we still need before detailed planning (#11/#12 on)

Status of Phase 0 (#1) and the open questions that block detailed
hardware/firmware planning. Grouped by "blocks hardware", "blocks
firmware", "blocks validation".

## A. Blocks hardware design (#11 schematic, #12 interface spec)

1. **Confirm the exact O1 memory & I/O map and the free decode windows.**
   - The block diagram (docs/virtual-peripherals-block-diagram.md) assumes
     candidate port bases. We must read the O1 mainboard schematic to
     confirm which port addresses the onboard decode leaves free, so the
     virtual peripherals and the CoPower-88 emulation don't collide.
   - *Source:* O1 technical/service manual mainboard schematic.
   - **New issue needed.**

2. ~~**NMOS vs CMOS Z80 across all three target machines.**~~ **RESOLVED BY HISTORY
   (user, 2026-10-09).**
   - The CMOS Z80 (Z84C00) didn't ship until 1985; Osborne 1 production ended in
     1983 — so **every O1 is NMOS.** There is no CMOS-variant matrix to build.
   - **Interposer decision:** standardize on **74AHCT (or 74HCT)** for anything
     touching the Z80 bus. NMOS outputs are TTL-ish (need TTL-compatible inputs);
     NMOS inputs have ~2.0–2.4 V high thresholds (AHCT/HCT drive them correctly).
     No per-machine logic-family testing needed. #39's remaining ask reduces to
     confirming NMOS + date codes for the record.
   - **Replica note:** the replica uses the *new-production CMOS* Z84C00 (5 V grade)
     — fully software-compatible, lower power; see #49. The interposer and the
     replica thus use *different* CPU silicon, deliberately: AHCT interfaces the
     NMOS original; the replica gets a modern CMOS CPU.

3. ~~**Z80 socket & chargen socket pinout on the O1 mainboard.**~~
   **Z80 side RESOLVED 2026-10-10 — and now confirmed from the primary source.**
   The O1 fits an NEC µPD780C (≡ Z80A) in a DIP-40 socket, so the socket's pin
   numbering is the chip's — the standard Zilog DIP-40 pinout. Both
   `docs/o1-memory-io-map.md` §6 (which claimed pin 11 = GND; it is +5 V) and
   the interposer generators (off by one across all 40 pins) were wrong and are
   now corrected; `tools/check_schematics.py` asserts the datasheet pinout
   against every connector that mates with that socket. *Sources:* Zilog Z80
   Microprocessor Family Databook, cross-checked against z80.info/zinout.htm —
   **and the O1 mainboard schematic itself**: 1A2011-00 Rev E sheet 3 of 9 draws
   UC11 = Z80-A with +5 V = 11, GND = 29, A0 = 30, D0 = 14, D1 = 15, D2 = 12,
   D3 = 8, MREQ = 19, IORQ = 20, RD = 21, WR = 22, BUSRQ = 25, M1 = 27,
   RFSH = 28, NMI = 17, A1 = 31 … A10 = 40 — exactly the datasheet pinout. See
   `docs/o1-mainboard-schematic.md` §4 (#62).
   - **Still open: the char-gen socket.** ScreenPac taps the 24-pin char-gen
     socket (UA15) as well, so a ScreenPac-style video personality (#24) still
     needs that pinout. *Source:* O1 mainboard schematic + ScreenPac install
     pages (have PDF).

4. ~~**CoPower-88 monitor ROM dump.**~~ **DEFERRED (user decision, 2026-10-09).**
   - The SWP-8088 2732A on the CoPower board would fully specify the host
     mailbox protocol — but the user prefers not to desolder the ROM and is
     not set up for dumping. We proceed from the Kaypro↔Zorba driver-diff
     inference (#3/#4/#5), which is sufficient to build the emulation against.
   - The dump resolves only the residual doorbell/IRQ-semantics question;
     revisit only if the board is ever desoldered for another reason.

5. ~~**Power budget.**~~ **RESOLVED (user decision, 2026-10-09).**
   - No measurement needed: the interposer board gets its **own dedicated 5VDC
     feed** from a convenient rail near the Z80 socket. #12's spec should state
     this as a requirement, sized for Pico 2 W WiFi bursts (~300 mA+).

## B. Blocks firmware planning (#16–#24)

6. **CoPower-88 protocol — finish #3/#4/#5.** (largely done in research,
   needs consolidation into a single authoritative protocol doc + issue
   closure). Open: exact doorbell/IRQ semantics and the 611-0003 sheet-4
   comparator reference value.

7. **Drive C IEEE-488 ramdisk protocol (#6).** DRIVE_C.IMD disassembly
   started; needs the command set + handshake nailed down before #22.

8. **RT-60A register map (#7).** Reconstructed from manual; the bad TD0
   means we trust the PDF. Needs a confirming read against any real unit
   before #18.

9. **OCC1 hard disk (#8).** Extraction done; controller type (likely a
   Z80-interposer winchester) and host interface still to characterize
   before #23-adjacent HD work.

10. **6850 ACIA location for the WiFi modem (#21).** The Hayes/telnet
    modem snoops the 6850. Need the O1 SIO/ACIA port addresses and wiring
    from the mainboard schematic (overlaps gap #1).

11. **Floppy controller (#20, #30).** O1 uses a WD179x; need the exact
    variant + port map + the double-density upgrade's changes (photos in
    research/) before the floppy interposer personality.
    - *Partly resolved:* the mainboard sheet draws **UB7 = MB8877** (Fujitsu's
      WD1793 equivalent), and MAME's driver independently carries the same
      uncertainty ("Schematics specify a WD1793 floppy controller, but we're
      using the Fujitsu equivalent MB8877 here") — the symbol is
      WD1793-compatible, the fitted part may be either. Ports 2100–2103 per
      `docs/o1-memory-io-map.md` §3, confirmed against the running machine's
      decode masks. Double-density upgrade changes still open. See
      `docs/o1-mainboard-schematic.md` §5, §7 (#62).

## C. Blocks validation (#29)

12. **Which three machines, which board revisions.** Need the identity
    of each target machine (one is 24187A) and their Z80 types to build
    the NMOS/CMOS matrix. *Depends on:* #39.

13. **A known-good boot disk image** for each machine to validate the
    interposer doesn't change behavior when passive (all devices off).

## D. Cross-cutting / process

14. **Consolidate research into per-device protocol specs.** We have
    analysis docs; before detailed planning each device needs a single
    "protocol spec" doc with the register/port map, timing, and handshake
    as the contract for both the emulator firmware and the test cases.

15. **Decide memory-resident vs pure I/O-port for virtual devices.**
    (See block diagram §2.) Leaning pure I/O-port to avoid bank conflicts;
    confirm against the O1 map from gap #1.

---

## Recommended next actions (before #11 detailed design)

- [x] ~~**New issue:** extract O1 mainboard memory+I/O map~~ **DONE — #40**
  (unblocked gaps 1, 10, 11, 15; see docs/o1-memory-io-map.md).
- [ ] **#39** (user, re-scoped): Z80 chip markings on the other two machines +
  machine IDs (unblocks 2, 12). The DIP-switch item is dead — the port decode is
  hard-wired at 0x7E/0x7F per user correction.
- [ ] Finish device protocol specs: #3/#4/#5, #6, #7, #8 (unblocks 6-9). This is
  the next software-session work stream.
- [x] ~~Dump the SWP-8088 ROM~~ **DEFERRED** (gap 4) — proceed from driver-diff
  inference.
- [x] ~~Power budget~~ **RESOLVED** (gap 5) — interposer gets its own 5VDC feed.
- [ ] New: char-gen ROM capture (#44) and USB HID keyboard adapter (#45) — both
  pre-hardware, opportunistic.
