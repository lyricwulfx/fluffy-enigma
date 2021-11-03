#!/bin/bash
if $ABC_CFG_AUTO_UPDATE; 
then
    echo "Updating apt..."
    sudo apt-get update
fi
echo "Installing Linux dependencies:"
echo "  $ABC_DEPS"
# Apt version syntax is libxyz=1.2.3, we can use a simple replace
sudo apt-get install -y ${ABC_DEPS//@/=}