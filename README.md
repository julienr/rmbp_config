RMBP config
===========
My config used to run Ubuntu 13.10 on a lat 2013 13 inches retina macbook pro.

Using  full disk encryption using a dm-crypt container containing two lvm
logical volumes (/, /home)


Wireless
--------
The rmbp 11, 1 uses a BCM4360 wireless chip.

The wireless is kind of unstable. It works fine with some networks but fail
to see some others and/or drops the connection as soon as the traffic gets
a bit high. (This seems to be a problem with 5Ghz wifi networks)

Relevant bug reports (though using an earlier broadcam chip) :
https://bugs.launchpad.net/ubuntu/+source/bcmwl/+bug/1189611
https://bugs.launchpad.net/ubuntu/+source/bcmwl/+bug/1256158

Possible solution
https://zoni.nl/posts/2013/11/09/fixing-the-broadcom-bcm4331-wireless-drivers-on-ubuntu-1310/


### WPA2 secured networks

If you have trouble connecting to WPA2 networks, the following might help :

This bug report is interesting
https://bugs.launchpad.net/ubuntu/+source/network-manager/+bug/1173152

Basically, edit /etc/NetworkManager/system-connections/&lt;Network&gt; and remove
the line "system-ca-certs=true". Then, restart network-manager with

sudo network-manager restart

And enjoy !
