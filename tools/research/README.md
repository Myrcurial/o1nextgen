# tools/research/ — research & one-off code worth keeping

Home for code written along the way that is **not part of the finished
solution** but is worth preserving: disassembly helpers, one-shot
extraction scripts, protocol probes, format experiments, validation
scratch programs, "figuring it out" notebooks/scripts.

## Rules of the folder

- Anything here may be rough, uncommented, or half-finished — but it
  must carry a one-paragraph header saying **what it was for, which
  issue/research question it served, and what the outcome was**.
- If something here graduates into the product (e.g. a probe becomes
  part of the analyzer, an extractor becomes a build step), **move it
  out** to its proper home (`tools/`, `firmware/`, `software/`) and
  leave a pointer in this file's index.
- Nothing in this folder is built, shipped, or depended upon by the
  finished solution.

## Index

- **`mame-lua-probe.lua`** — what MAME's Lua API exposes inside a *running*
  machine, and how the O1's bank latch actually behaves (it does not persist).
  Written for #64 while working out how to check `docs/o1-memory-io-map.md`
  against the machine rather than against MAME's driver source; its findings
  graduated into `tools/o1_mame_probe.lua` and
  `docs/o1-mainboard-schematic.md` §7a, which is why the probe is the tool and
  this is the notebook. Still useful for poking at any MAME driver from Lua.
