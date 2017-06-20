#!/bin/bash

set -e

wget http://ftp.stack.nl/pub/users/dimitri/doxygen-1.8.13.linux.bin.tar.gz
tar -xzf doxygen-1.8.13.linux.bin.tar.gz
mv ./doxygen-1.8.13/bin/* /usr/bin/
#export PATH=$PATH:$(pwd)/doxygen-1.8.13/bin
echo "Doxygen version: $(doxygen -v)"
