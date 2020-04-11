#!/bin/sh

mkdir -p ~/.config/pip
echo '[global]
trusted-host = pypi.python.org
               pypi.org
               files.pythonhosted.org' >> ~/.config/pip/pip.conf
