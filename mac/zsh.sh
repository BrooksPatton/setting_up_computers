#!/bin/bash

echo
echo "** installing zsh"
echo

brew install zsh

sudo sh -c 'echo "$(which zsh)" >> /etc/shells'

chsh -s "$(which zsh)"
