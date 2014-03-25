#!/bin/sh

[[ -f /.installed ]] && exit 0
touch /.installed
[[ ! -f /.installed ]] && exit 1


echo "=== installing ==="
pacman -S -y --noconfirm
pacman -S --needed --noconfirm alsa-utils windowmaker-extra zsnes gens dgen-sdl
git config --global user.email musclorr@gmail.com
git config --global user.name musclorr
alsactl init

