#!/bin/sh

sysctl net.ipv4.ip_forward=1
iptables -P FORWARD ACCEPT
iptables -A POSTROUTING -t nat -j MASQUERADE -s 172.16.42.0/24
