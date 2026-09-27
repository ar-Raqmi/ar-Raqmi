#!/usr/bin/env bash
# Regenerate the README banner from source.
# Requires: rsvg-convert (librsvg2-bin) and the Fraunces / Inter / JetBrains Mono fonts.
set -euo pipefail
cd "$(dirname "$0")"

# 2x for crisp rendering on high-DPI displays
rsvg-convert -w 2560 banner.svg -o banner.png
echo "wrote $(pwd)/banner.png"
