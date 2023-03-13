#!/bin/bash
# Add the WineHQ repository
sudo dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/34/winehq.repo
sudo rpm --import https://dl.winehq.org/wine-builds/winehq.key

# Install WineHQ
sudo dnf install -y winehq-staging

