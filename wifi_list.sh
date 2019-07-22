#!/bib/bash

ip link set wlan0 up
iw dev wlan0 scan | grep SSID | cut -d : -f 2 | less
