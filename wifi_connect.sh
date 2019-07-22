#!/bin/bash

rc-service networkmanager stop
ip link setp wlan0 up
killall wpa_supplicant
wpa_supplicant -B -Dwext -i wlan0 -c /etc/wpa_supplicant/$1.conf
dhclient -v wlan0
