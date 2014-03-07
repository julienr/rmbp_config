#!/bin/sh
# Setup synaptics profile to act like a touchpad. This should be pretty similar
# to the OSX feeling

# synclient configuration
# To determine touchpad area, do the following
# ~|⇒ less /var/log/Xorg.0.log | grep -i range
# [    13.864] (--) synaptics: bcm5974: x-axis range -4750 - 5280 (res 0)
# [    13.864] (--) synaptics: bcm5974: y-axis range -150 - 6730 (res 0)
# [    13.864] (--) synaptics: bcm5974: pressure range 0 - 256
# [    13.864] (--) synaptics: bcm5974: finger width range 0 - 16
synclient VertTwoFingerScroll=1
synclient VertScrollDelta=100
synclient TapButton1=1
synclient TapButton2=3
synclient TapButton3=2
synclient PalmDetect=1
#synclient FingerLow=20
#synclient FingerHigh=25
synclient FingerHigh=75
synclient FingerLow=70
synclient TapAndDragGesture=1
# Right button click on lower-right corner of touchpad
synclient RightButtonAreaLeft=-500
synclient RightButtonAreaTop=5000

# Enable bottom-right corner button
synclient RBCornerButton=3
# Disable other corner buttons, otherwise, this will cause sudden jumps
synclient RTCornerButton=0
synclient LTCornerButton=0
synclient LBCornerButton=0
# Disable touch in in bottom area (where my thumb always lies).
# Requires a patched xserver-xorg-input-synaptics, see :
# https://bugs.launchpad.net/ubuntu/+source/xserver-xorg-input-synaptics/+bug/1026046
# https://bugs.freedesktop.org/show_bug.cgi?id=66532#c5
synclient AreaBottomEdge=4500

synclient TapAndDragGesture=1
