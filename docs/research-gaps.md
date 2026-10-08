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

2. **NMOS vs CMOS Z80 across all three target machines.**
   - Confirmed NMOS Z80A (8408) on ONE machine (#9). #11 level-shifter
     choice (AHCT vs LVC) needs the same datum for the other two.
   - *Depends on:* #39 (user photos of the other two machines' Z80s).

3. **Z80 socket & chargen socket pinout on the O1 mainboard.**
   - ScreenPac taps BOTH the 40-pin Z80 socket and the 24-pin char-gen
     socket. If we want a ScreenPac-style video personality (#24) we need
     the O1 chargen socket pinout. For the base interposer we only need
     the Z80 socket — confirm the O1 Z80 pinout matches standard Z80 DIP40.
   - *Source:* O1 mainboard schematic + ScreenPac install pages (have PDF).

4. **CoPower-88 monitor ROM dump.**
   - The SWP-8088 2732A on the CoPower board fully specifies the host
     mailbox protocol. Dumping it removes guesswork from #23/#26.
   - *Depends on:* ROM reader (#14) or reader hardware; user access to board.

5. **Power budget.** What +5V current can the Z80 socket / a fly-lead
   supply? Determines whether the Pico 2 W (WiFi bursts ~300 mA+) needs a
   separate feed. *Source:* O1 PSU spec + measurement.

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

- [ ] **New issue:** extract O1 mainboard memory+I/O map from schematic
      (unblocks gaps 1, 10, 11, 15).
- [ ] **#39** (user): photos of other two machines' Z80s + machine IDs
      (unblocks 2, 12).
- [ ] Finish device protocol specs: #3/#4/#5, #6, #7, #8 (unblocks 6-9).
- [ ] Decide whether to dump the SWP-8088 ROM now or defer (gap 4).
