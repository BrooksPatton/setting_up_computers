#!/bin/bash

echo
echo "** Setting up SSH keys"
echo "Enter your email: "

read EMAIL

ssh-keygen -t rsa -b 4096 -C "$EMAIL"
eval "$(ssh-agent -s)"

cp mac-ssh-config ~/.ssh/config

ssh-add -K ~/.ssh/id_rsa

echo
echo "** Add your ssh key to github or any other services now"
echo

cat ~/.ssh/id_rsa.pub

echo
echo "press return when ready to continue"
read
