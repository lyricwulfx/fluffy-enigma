#!/bin/bash
echo "Updating brew..."
brew update > "$ABC_OUT"
echo "Installing macOS dependencies:"
echo "  $ABC_DEPS"
# Brew version syntax is already libxyz@1.2.3 (same as ours)
brew install $ABC_DEPS > "$ABC_OUT"