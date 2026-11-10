#!/usr/bin/env bash
set -e
cd /serverhive3/abdelmgeedahmede/risinos
source build/envsetup.sh
riseup miatoll user
rise b
echo "ROM_BUILD_SUCCESS" > out/rom_status.txt
