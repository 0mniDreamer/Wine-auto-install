#!/bin/bash

echo "Welcome to the Wine Auto Installer"

# Enable the 32-bit archicture support for Wine 
sudo dpkg --add-architecture i386

# Make Directory to hold the Wine-HQ key and retreieve the key 
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key

# Update the sources list with the WineHQ repo.
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources # Ubuntu 22.04 OS repo 

# Update the local repo list file to populate the new repos.
sudo apt update

# Install Wine Staging from the WineHQ repo
sudo apt install -y --install-recommends winehq-staging

# Install the winetrick package
sudo apt install -y winetricks 

# Enable the winetricks self updater
sudo winetricks --self-update



