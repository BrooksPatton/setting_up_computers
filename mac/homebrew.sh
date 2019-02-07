#!/bin/bash

echo
echo "** installing homebrew"
echo

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap cask
