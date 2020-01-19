#!/bin/bash
echo "building instantos iso"
if [ -e ~/workspace/iso-profiles ] && command -v buildiso &>/dev/null; then
    echo "dependencies checked"
else
    echo "erroe: iso-profiles in workspace not found"
    exit
fi

rm -rf ~/iso-profiles
cp -r ~/workspace/iso-profiles ~/
cd
buildiso -p instantos
