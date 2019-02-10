#!/bin/bash

brew install tmux

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ln .tmux.conf ~/

echo
echo "** tmux installed"
echo
