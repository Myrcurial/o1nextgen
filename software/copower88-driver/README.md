# copower88-driver — Osborne 1 CoPower-88 host driver (CP/M)

The missing piece: Kaypro and Zorba CoPower-88/SWP drivers exist, the
Osborne version does not. Port the host↔8088 protocol — inferred from
the Kaypro/Zorba driver diff (#36) — to the Osborne BIOS so both the
real board and the interposer shim (`firmware/copower88-shim/`) work.

Tracks: #26; depends on #3 (Kaypro loader disassembly), #4 (Zorba
diff), #5 (port map/mailbox from schematics). The single hardest
Osborne-side item.

## Definition

- Extract the host protocol from `docs/copower88-protocol.md` +
  `research/copower88/` disassemblies; identify the Osborne-specific
  adaptation layer (port addresses from `docs/o1-memory-io-map.md`,
  BIOS integration points).
- Z80 assembly; must fit CP/M 2.2 constraints and coexist with the
  other drivers on the updated boot disk (#28).
- Test against Kaypro CoPower-88 CP/M and MS-DOS disk images
  (`research/copower88/kaypro/`).

## Risks

- Residual doorbell/IRQ-semantics ambiguity (monitor ROM dump deferred,
  research-gaps #4) — build against the inferred protocol; trap and
  log unknowns during bring-up with the bus analyzer (#17).

## Deliverables

- O1 CoPower-88 driver + loader + source
- Bring-up notes: real board vs. interposer shim matrix
