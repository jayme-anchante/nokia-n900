#!/bin/sh
packages=`cat packages/system.txt`
echo installing $packages
apk add --no-cache $packages
