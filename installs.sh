#!/bin/sh
packages=`cat packages/packages_after_install.txt`
echo installing $packages
apk add --no-cache $packages
