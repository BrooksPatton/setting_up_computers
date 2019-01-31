#!/bin/bash

# Install zsh using homebrew on a mac

brew install zsh

sudo sh -c 'echo "$(which zsh)" >> /etc/shells'

chsh -s "$(which zsh)"
