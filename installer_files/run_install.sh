#!/bin/sh

./ftp.sh 6.0.0SNAPSHOT_20150520_1932
unzip -oq Talend-Installer*.zip
unzip -oq licenses*.zip || true
cp license*/CLOUD_EE_MPX* .
mv CLOUD_EE_MPX* license
chmod +x Talend-Installer-*64*.run
./install.sh
rm -rf dist
rm -rf Talend-Installer*
