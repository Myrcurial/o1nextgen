#!/bin/sh
# mame-boot-probe.sh MACHINE IMAGE.imd [SECONDS] [SHOT.png]
#
# Boot a floppy image on one of MAME's Osborne 1 machines, headless, and report
# whether it reached an A> prompt, the screen contents, the screen geometry, and
# (optionally) a PNG snapshot. See mame-boot-probe.lua for why.
#
#   tools/research/mame-boot-probe.sh osborne1nv \
#       tools/emulator-setup/floppies/80-blank.imd 120 /tmp/shot.png
#
# Environment:
#   O1_ROMPATH  ROM path (default ~/Documents/Osborne1/roms). ROMs may be an
#               osborne1.zip, an osborne1/ directory, or loose files, which get
#               a temporary 'osborne1' symlink so MAME can find them.
set -eu

HERE="$(cd "$(dirname "$0")" && pwd)"
MACHINE="${1:?usage: mame-boot-probe.sh MACHINE IMAGE.imd [SECONDS] [SHOT.png]}"
IMAGE="${2:?usage: mame-boot-probe.sh MACHINE IMAGE.imd [SECONDS] [SHOT.png]}"
BUDGET="${3:-120}"
SHOT="${4:-}"
ROMPATH="${O1_ROMPATH:-$HOME/Documents/Osborne1/roms}"

[ -f "$IMAGE" ] || { echo "mame-boot-probe.sh: no such image: $IMAGE" >&2; exit 1; }
# MAME runs from a neutral directory (below), so the image path must be absolute
# before we change directory.
IMAGE="$(cd "$(dirname "$IMAGE")" && pwd)/$(basename "$IMAGE")"
[ -d "$ROMPATH" ] || { echo "mame-boot-probe.sh: no such ROM path: $ROMPATH" >&2; exit 1; }
command -v mame >/dev/null || { echo "mame not found (brew install mame)" >&2; exit 1; }

# MAME loads <rompath>/<machine>.zip or <rompath>/<machine>/. Loose ROMs in one
# directory are common, so hand MAME a temporary rompath with an 'osborne1'
# symlink rather than making the user rearrange their archive.
LINKROOT=""
if [ ! -e "$ROMPATH/osborne1.zip" ] && [ ! -d "$ROMPATH/osborne1" ]; then
    LINKROOT="${TMPDIR:-/tmp}/o1roms.$$"
    mkdir -p "$LINKROOT"
    ln -s "$ROMPATH" "$LINKROOT/osborne1"
    echo "note: ROMs are loose in $ROMPATH; using $LINKROOT/osborne1" >&2
    ROMPATH="$LINKROOT"
fi

RUN_LUA="${TMPDIR:-/tmp}/o1bootprobe.$$.lua"
trap 'rm -f "$RUN_LUA"; [ -n "$LINKROOT" ] && rm -rf "$LINKROOT"' EXIT
cat "$HERE/mame-boot-probe.lua" > "$RUN_LUA"

# MAME writes cfg/ and snap/ into the current directory; run somewhere neutral.
cd "${O1_RUNDIR:-/tmp}"

O1_MACHINE="$MACHINE" O1_IMAGE="$IMAGE" O1_SHOT="$SHOT" SDL_VIDEODRIVER=dummy \
mame "$MACHINE" -flop1 "$IMAGE" -video none -sound none -nothrottle \
    -autoboot_script "$RUN_LUA" -seconds_to_run "$BUDGET" -rompath "$ROMPATH"
