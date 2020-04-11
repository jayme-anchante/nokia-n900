#!/bin/sh

processes=$(ps aux | grep wpa_supplicant | wc -l)
threshold=1
while [ $processes -gt $threshold ]
do
	killall wpa_supplicant
	echo killing wpa_supplicant
	processes=$(ps aux | grep wpa_supplicant | wc -l)
done

rc-service networkmanager stop
ip link set wlan0 up
killall wpa_supplicant
wpa_supplicant -B -Dwext -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf
dhclient -v wlan0
