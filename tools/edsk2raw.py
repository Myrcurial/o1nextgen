#!/usr/bin/env python3
"""edsk2raw.py - convert EXTENDED CPC DSK (as produced by SAMdisk 4 from
TD0/flux sources) into a raw CP/M filesystem image.

Raw layout: tracks in ascending (cyl, head) order; within a track,
sectors in the order they physically appear in the track block (which
preserves interleave as recorded by SAMdisk). Sector sizes are taken
from the sector info table (N field), so mixed-density disks work.

Usage: edsk2raw.py in.dsk out.raw [--pad SECTRK,SECLEN]
  --pad: emit fixed-size tracks of SECTRK sectors of SECLEN bytes in
  R order (1..SECTRK); missing/damaged sectors filled with 0xE5.
  Use for partial dumps of known-geometry disks.
"""
import sys

def main(src, dst, pad=None):
    data = open(src, 'rb').read()
    assert data[:11] == b'EXTENDED CP', 'not an extended DSK'
    ntracks = data[0x30]
    nheads = data[0x31]
    # track size table starts at 0x34, one byte per (track*head), in 256B units
    tsz = data[0x34:0x34 + ntracks * nheads]
    out = bytearray()
    off = 0x100
    for t in range(ntracks):
        for h in range(nheads):
            blk = off
            sz = tsz[t * nheads + h] << 8
            if sz == 0:  # unformatted track
                if pad:
                    out += b'\xe5' * (pad[0] * pad[1])
                off = blk
                continue
            assert data[blk:blk+10] == b'Track-Info', f'track {t}/{h} header missing'
            nsec = data[blk + 0x15]
            info = blk + 0x18
            secs = []
            rids = []
            for s in range(nsec):
                i = info + s * 8
                n = data[i + 3]          # sector size = 128 << N
                size = 128 << n if n < 8 else 0
                secs.append(size)
                rids.append(data[i + 2])
            soff = blk + 0x100
            order = sorted(range(nsec), key=lambda s: rids[s])
            offs = []
            acc = soff
            for size in secs:
                offs.append(acc)
                acc += size
            if pad:
                sectrk, seclen = pad
                byr = {}
                for s in order:
                    byr[rids[s]] = data[offs[s]:offs[s] + secs[s]]
                for r in range(1, sectrk + 1):
                    out += byr.get(r, b'\xe5' * seclen)[:seclen].ljust(seclen, b'\xe5')
            else:
                for s in order:
                    out += data[offs[s]:offs[s] + secs[s]]
            off = blk + sz
    open(dst, 'wb').write(bytes(out))
    print(f'{dst}: {len(out)} bytes, {ntracks} cyl x {nheads} heads')

if __name__ == '__main__':
    pad = None
    if len(sys.argv) > 3 and sys.argv[3] == '--pad':
        a, b = sys.argv[4].split(',')
        pad = (int(a), int(b))
    main(sys.argv[1], sys.argv[2], pad)
