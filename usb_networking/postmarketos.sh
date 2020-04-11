#!/bin/sh

route add default gw 172.16.42.2
echo nameserver 80.80.80.80 | tee /etc/resolv.conf
