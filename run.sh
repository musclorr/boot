#!/bin/sh

[[ -f /.installed ]] && exit 0
touch /.installed
[[ ! -f /.installed ]] && exit 1


echo "=== installing ==="
pacman -S -y --noconfirm
pacman -S --needed --noconfirm alsa-utils windowmaker-extra zsnes gens dgen-sdl zip firefox-adblock-plus xorg-xmodmap python2-pip xf86-input-synaptics xorg-xinput
ln -s /usr/bin/python2 /usr/bin/python
git config --global user.email musclorr@gmail.com
git config --global user.name musclorr
alsactl init
echo "syntax on" > /root/.vimrc
zip -u /usr/lib/firefox/omni.ja defaults/profile/bookmarks.html
cp .Xmodmap /root
cp atxorg.sh /etc/X11/xinit/xinitrc.d/

cp vendor.js /usr/lib/firefox/browser/defaults/preferences
# cp WM* /etc/WindowMaker

# change time zone
timedatectl set-timezone Europe/Paris
