#!/bin/bash
# Add the WineHQ repository
sudo apt update
sudo apt install -y software-properties-common gnupg2
wget -qO - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ $(lsb_release -cs) main'

# Install WineHQ
sudo apt update
sudo apt install -y --install-recommends winehq-staging 


