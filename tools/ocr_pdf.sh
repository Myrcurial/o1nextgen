#!/bin/sh
# ocr_pdf.sh — OCR an image-only PDF and store the text ADJACENT to it.
#
# Usage: tools/ocr_pdf.sh path/to/scan.pdf [dpi]
#
# Produces path/to/scan.ocr.txt (committed to the repo — see the OCR
# convention in research/README.md). Requires poppler (pdftoppm) and
# tesseract (macOS: brew install poppler tesseract).
set -eu

PDF="$1"
DPI="${2:-120}"
OUT="${PDF%.pdf}.ocr.txt"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "Rendering $PDF at ${DPI}dpi ..."
pdftoppm -r "$DPI" -gray -png "$PDF" "$TMP/page"

: > "$OUT"
i=0
for img in "$TMP"/page-*.png; do
    i=$((i + 1))
    printf '\n===== PAGE %s =====\n\n' "$i" >> "$OUT"
    tesseract "$img" stdout 2>/dev/null >> "$OUT"
done

echo "Wrote $OUT"
