#!/bin/bash

# Copies the .zshrc file into place. Ironically I'm using bash for this :). The .zshrc file is in the root of the repo as this script is meant to be called from there

echo
echo "** installing zshrc"
echo
ln ./.zshrc ~/
