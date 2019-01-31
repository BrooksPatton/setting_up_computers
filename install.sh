#!/bin/bash

# This install script will determine what type of computer we are running on and then run the appropriate install scripts to get everything (or at least as much as possible set up

function log() {
  echo "*************************"
  echo "$1"
  echo "*************************"
}

function mac_install() {
  log "installing homebrew"
  bash -c mac/homebrew.sh

  log "installing zsh"
  bash -c mac/zsh.sh

  log "installing vim"
  bash -c mac/vim.sh

  log "installing notion"
  bash -c mac/notion.sh
}

function any_install() {
  log "setting up .zshrc"
  bash -c any/zshrc/zshrc.sh
}

case "$(uname -s)" in
  Darwin*) OPERATING_SYSTEM="mac";;
  *)       OPERATING_SYSTEM="unknown"
esac

if [ "$OPERATING_SYSTEM" == "mac" ]
then
  mac_install
else
  echo unknown operating system, please check uname
  exit 1
fi

any_install
