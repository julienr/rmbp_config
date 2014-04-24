Since the official wl drivers don't work that well for 5GHz networks, we can
use ndiswrapper. Unfortunately, this is not better (cannot scan)

Download XP drivers from asus (PCE-AC68 uses bcm4360 chipset) :
http://dlcdnet.asus.com/pub/ASUS/wireless/PCE-AC68/UT_PCE_AC68_2084.zip

Unzip and extract drivers from .cab with unshield

  mkdir cab_content
  cd cab_content
  unshield x ../data1.hdr

Now, use ndisgtk to load the driver in "cab_content/PCE-AC68_-_Driver_-_WinXP/Driver/PCE-AC68/"

This is the pci device id :
03:00.0 0280: 14e4:43a0 (rev 03)

03:00.0 Network controller: Broadcom Corporation BCM4360 802.11ac Wireless Network Adapter (rev 03)
	Subsystem: Apple Inc. Device 0112
	Flags: bus master, fast devsel, latency 0, IRQ 18
	Memory at b0600000 (64-bit, non-prefetchable) [size=32K]
	Memory at b0400000 (64-bit, non-prefetchable) [size=2M]
	Capabilities: <access denied>
	Kernel driver in use: wl


On ubuntu 13.10, running kernel 3.13, this requires ndiswrapper 1.59-2 from Trusty.
