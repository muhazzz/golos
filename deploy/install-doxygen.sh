#!/bin/bash

set -e

wget http://ftp.stack.nl/pub/users/dimitri/doxygen-1.8.13.linux.bin.tar.gz
tar -xzf doxygen-1.8.13.linux.bin.tar.gz
export PATH=$PATH:$(pwd)/doxygen-1.8.13/bin
echo "Doxygen version: $(doxygen -v)"
