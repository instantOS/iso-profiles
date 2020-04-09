#!/bin/bash

cd

# first, clear the pacman cache
curl -s https://raw.githubusercontent.com/instantOS/iso-profiles/master/pacclear.sh >/tmp/pacclear.sh
chmod +x /tmp/pacclear.sh
sudo /tmp/pacclear.sh

ibuild fullrepo
ibuild push
cd

# iso build will fail without working repo
if ! [ -e ~/instantbuild/index.html ]; then
    echo "error: repository build failed"
    exit 1
fi

rm -rf iso-profiles
git clone --depth=1 https://github.com/instantos/iso-profiles.git
buildiso -p instantos 2>&1 | tee ~/isobuild
