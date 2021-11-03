#!/bin/bash
# Don't worry about auto update setting (for now) because apt is fast to update repo
echo "Updating apt..."
sudo apt-get update

echo "Installing Linux dependencies:"
echo "  $ABC_DEPS"
# Apt version syntax is libxyz=1.2.3, we can use a simple replace
sudo apt-get install -y ${ABC_DEPS//@/=}