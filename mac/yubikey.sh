#!/bin/bash

curl https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-4.3.5-mac.pkg > ~/Downloads/yubikey.pkg && \
sudo installer -pkg ~/Downloads/yubikey.pkg -target /
