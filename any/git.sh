#!/bin/bash

git config --global core.excludesfile ~/.gitignore_global

ln .gitignore_global ~/

echo
echo "** global gitignore created"
echo
