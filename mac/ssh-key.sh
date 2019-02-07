#!/bin/bash

echo
echo "** Setting up SSH keys"
echo "Enter your email: "

read EMAIL

ssh-keygen -t rsa -b 4096 -C "$EMAIL"
eval "$(ssh-agent -s)"

cp mac-ssh-config ~/.ssh/config

ssh-add -K ~/.ssh/id_rsa
