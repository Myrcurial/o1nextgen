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
#               ROMs in <rompath>/osborne1/, as a directory or as an
#               osborne1.zip.  If neither exists but ROMs are present loose in
#               <rompath>, a temporary directory containing an 'osborne1'
#               symlink is used instead, so a plain "ROMs in a folder" layout
#               works without rearranging anything.
#   O1_FLOPPY   bootable image for drive A.  Default: the first 52-*.imd in
#               ~/Documents/Osborne1/floppies, else the first *.imd.  Without
#               one the BIOS never reaches A> and the boot check fails.
#   O1_MACHINE  MAME driver.  Default is derived from the image name, because
#               the prefix is the image's *video mode*, not a version:
#                 52-*.imd  -> osborne1     stock, 52 columns
#                 104-*.imd -> osborne1sp   SCREEN-PAC, 52/104 columns
#                 80-*.imd  -> osborne1nv   Nuevo Video, 80 columns
#               The prefix is a *label* for the video mode the image was
#               prepared for, not a statement about what it can boot: the three
#               images in tools/emulator-setup/floppies all boot on all three
#               drivers.  What gates bootability is the CBIOS on the disk.  The
#               checks below are written for the stock machine - expect the
#               video checks to need adjusting for sp/nv.
#   O1_SECONDS  emulated-second budget (default 90).
#
# Requires mame (brew install mame).  Exits non-zero if any check fails.
set -eu

PROBE="$(cd "$(dirname "$0")" && pwd)/o1_mame_probe.lua"
ROMPATH="${O1_ROMPATH:-$HOME/Documents/Osborne1/roms}"
FLOPPIES="$(dirname "${O1_FLOPPY:-$HOME/Documents/Osborne1/floppies/x}")"
BUDGET="${O1_SECONDS:-90}"

# Pick a boot image: the stock-resolution one if there is one, else whatever
# is there.  The 52-/80-/104- prefix is the video mode the image was prepared
# for; it is used here only as a hint for which driver to run, because (measured
# against MAME) all three of the committed images boot on all three drivers.
# See docs/mame-emulation.md section 4.
IMAGE="${O1_FLOPPY:-}"
if [ -z "$IMAGE" ]; then
    for f in "$FLOPPIES"/52-*.imd "$FLOPPIES"/*.imd; do
        if [ -f "$f" ]; then IMAGE="$f"; break; fi
    done
fi
if [ -n "$IMAGE" ] && [ ! -f "$IMAGE" ]; then
    echo "check_o1_map.sh: no such floppy image: $IMAGE" >&2; exit 1
fi

# ...and the prefix picks the driver to match.
MACHINE="${O1_MACHINE:-}"
if [ -z "$MACHINE" ]; then
    case "$(basename "${IMAGE:-none}")" in
        104-*) MACHINE=osborne1sp ;;
        80-*)  MACHINE=osborne1nv ;;
        *)     MACHINE=osborne1 ;;
    esac
fi
if [ "$MACHINE" != osborne1 ]; then
    echo "note: '$MACHINE' selected from the image name; the checks in" >&2
    echo "      tools/o1_mame_probe.lua are written for the stock osborne1" >&2
    echo "      and the video-related ones will need adjusting." >&2
fi
if [ -z "$IMAGE" ]; then
    echo "note: no .imd in $FLOPPIES - running without a disk, so the boot" >&2
    echo "      check (B1) will fail." >&2
fi

command -v mame >/dev/null || { echo "mame not found (brew install mame)" >&2; exit 1; }
[ -f "$PROBE" ] || { echo "missing $PROBE" >&2; exit 1; }
[ -d "$ROMPATH" ] || { echo "check_o1_map.sh: no such ROM path: $ROMPATH" >&2; exit 1; }

# MAME loads ROMs from <rompath>/osborne1/ - a directory or an osborne1.zip.
# The archive keeps them loose in one directory, so hand MAME a temporary
# rompath holding an 'osborne1' symlink rather than making the user rearrange
# their ROMs.
if [ ! -d "$ROMPATH/osborne1" ] && [ ! -f "$ROMPATH/osborne1.zip" ]; then
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

echo "running MAME: $MACHINE $*"
SDL_VIDEODRIVER=dummy mame "$MACHINE" "$@"
