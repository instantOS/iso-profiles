#!/bin/bash
sudo pacman -Scc
cd
curl -s https://raw.githubusercontent.com/instantOS/extra/master/directbuild.sh | bash
cd

rm -rf iso-profiles
git clone --depth=1 https://github.com/instantos/iso-profiles.git
buildiso -p instantos 2>&1 | tee ~/isobuild
