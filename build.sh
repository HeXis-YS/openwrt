#!/bin/bash
sudo apt update
sudo apt install build-essential subversion libncurses5-dev zlib1g-dev gawk gcc-multilib flex git-core gettext libssl-dev
./scripts/feeds update -a
./scripts/feeds install -a
rm -rf ./tmp
make -j$(($(nproc)+1)) download
make -j$(($(nproc)+1))