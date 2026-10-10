#!/bin/sh
# check_o1_map.sh - check docs/o1-memory-io-map.md against a running machine.
#
# Boots an Osborne 1 headlessly under MAME and interrogates it over its own bus:
# which pages are RAM, where the ROM is and how it mirrors, which value of the
# bank-switch port selects which bank, which bank-2 I/O windows answer, and
# whether the I/O space aliases the way the "sloppy decode" note says.  See
# tools/o1_mame_probe.lua for the assertions and the method.
#
#   tools/check_o1_map.sh
#
# Environment:
#   O1_ROMPATH  ROM path (default ~/Documents/Osborne1/roms).  MAME looks for
#               ROMs in <rompath>/osborne1/.  If that directory does not exist
#               but ROMs are present loose in <rompath>, a temporary directory
#               containing an 'osborne1' symlink is used instead, so a plain
#               "ROMs in a folder" layout works without rearranging anything.
#   O1_FLOPPY   bootable image for drive A (default
#               ~/Documents/Osborne1/floppies/52-o1prsnt.imd).  Without one the
#               BIOS never reaches A> and the boot check fails.
#   O1_SECONDS  emulated-second budget (default 90).
#
# Requires mame (brew install mame).  Exits non-zero if any check fails.
set -eu

PROBE="$(cd "$(dirname "$0")" && pwd)/o1_mame_probe.lua"
ROMPATH="${O1_ROMPATH:-$HOME/Documents/Osborne1/roms}"
IMAGE="${O1_FLOPPY:-$HOME/Documents/Osborne1/floppies/52-o1prsnt.imd}"
BUDGET="${O1_SECONDS:-90}"

command -v mame >/dev/null || { echo "mame not found (brew install mame)" >&2; exit 1; }
[ -f "$PROBE" ] || { echo "missing $PROBE" >&2; exit 1; }
[ -d "$ROMPATH" ] || { echo "check_o1_map.sh: no such ROM path: $ROMPATH" >&2; exit 1; }

# MAME loads ROMs from <rompath>/osborne1/.  The archive keeps them loose in
# one directory, so hand MAME a temporary rompath holding an 'osborne1'
# symlink rather than making the user rearrange their ROMs.
if [ ! -d "$ROMPATH/osborne1" ]; then
    LINKROOT="${TMPDIR:-/tmp}/o1roms.$$"
    mkdir -p "$LINKROOT"
    ln -s "$ROMPATH" "$LINKROOT/osborne1"
    echo "note: ROMs are loose in $ROMPATH; using $LINKROOT/osborne1" >&2
    ROMPATH="$LINKROOT"
    trap 'rm -rf "$LINKROOT"' EXIT
fi

# MAME writes cfg/ and snap/ into the current directory; run from somewhere
# neutral so the repo does not collect litter.
RUNDIR="${O1_RUNDIR:-/tmp}"
cd "$RUNDIR"

set -- -video none -sound none -nothrottle \
       -autoboot_script "$PROBE" -seconds_to_run "$BUDGET" -rompath "$ROMPATH"
[ -f "$IMAGE" ] && set -- -flop1 "$IMAGE" "$@"

echo "running MAME: osborne1 $*"
SDL_VIDEODRIVER=dummy mame osborne1 "$@"
