#!/bin/bash
if [ "$ABC_CFG_AUTO_UPDATE" == "true" ] 
then
    echo "Updating brew..."
    brew update
fi
echo "Installing MacOS dependencies:"
echo "  $ABC_DEPS"
# Brew version syntax is already libxyz@1.2.3 (same as ours)
brew install $ABC_DEPS