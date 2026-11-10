#!/usr/bin/env bash
set -e
cd /serverhive3/abdelmgeedahmede/risinos
source build/envsetup.sh
riseup miatoll user
m SettingsGoogle
echo "SETTINGS_BUILD_SUCCESS" > out/settings_status.txt
