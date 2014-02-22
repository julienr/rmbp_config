#!/bin/sh
# Update copies of config files
mkdir -p etc/default
cp /etc/default/grub etc/default/
cp /etc/rc.local etc/
mkdir -p etc/X11/xorg.conf.d
cp /etc/X11/xorg.conf.d/50-synaptics.conf etc/X11/xorg.conf.d/
