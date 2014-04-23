#!/bin/sh
# Update copies of config files
mkdir -p etc/default
cp /etc/default/grub etc/default/
cp /etc/rc.local etc/
mkdir -p etc/X11/xorg.conf.d
mkdir -p etc/X11/xorg.conf.available
cp /etc/X11/xorg.conf.d/* etc/X11/xorg.conf.d/
cp /etc/X11/xorg.conf.available/* etc/X11/xorg.conf.available/
