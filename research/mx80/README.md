# mx80/ — Epson MX-80 printer references

Reference material for the **virtual Epson MX-80** printer personality
(`firmware/virtual-printer/`, issue #19).

## Contents

| File | What it is | Sourced from |
|---|---|---|
| `Epson_MX-80_Operations_Manual.pdf` (~1.5 MB) | Epson MX-80 operation manual. Appendix 4 (printed pages -92- onward, PDF p. 97+) contains the **character font tables** showing how glyphs fit the 6×9 matrix. Also the ESC code reference the renderer must honor. | [Internet Archive / manualsbase](https://dn790002.ca.archive.org/0/items/manualsbase-id-381505/381505.pdf), captured 2026-10-09 |
| `EPSON_MX-80_Fonts_v1.0.zip` + `fonts/` | Michael Walden's EPSON MX-80 font pack (TTF/OTF/FON/FNT/XPM/PNG in normal, emphasized, zero-slash variants). CC BY-NC-SA 4.0, attribution: Michael Walden, 2025 (see `fonts/EPSON MX-80 Fonts/ReadMe.txt`). | [mw.rat.bz/MX-80](https://mw.rat.bz/MX-80/), captured 2026-10-09 |

## Notes for the renderer

- **Glyph source of truth is the manual's Appendix 4 tables** (6×9
  matrix). The Walden fonts are a convenience cross-check, but note the
  caveat below before trusting their metrics.
- **Open question — double-strike / density:** the Walden font renders
  ~2× wider than expected. Hypothesis: the MX-80 had a draft vs.
  high-quality (double-strike) behavior where the head prints the
  character twice with a half-pin-width horizontal offset, making it
  appear denser — which would explain the doubled width in a naive
  transcription. Needs research against the manual (ESC-density codes
  and the Appendix 4 column counts) and, ideally, a scan of real
  MX-80 output in both modes. Tracked in `firmware/virtual-printer/`.
- Emulation scope reminder (#19): two fonts, double-wide, italics,
  bold, underline; **no** ESC K/L graphics printing.
