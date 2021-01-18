#!/bin/sh




### This script installs zeusids with Nvidia drivers, CUDA tools, and other required packages locally.
### To run this, open the terminal (CTRL+ALT+T), cd to the directory this file is located in,
### and enter this command:
###
###		sudo chmod +x ./zeusids_network_installer.sh && ./zeusids_network_installer.sh




##
## Constants (Don't change these!)
##
REPO_NAME="zeusids"
REPO_ACCOUNT="scblouir"



##
##  0)  Clones the zeusids repo locally
##
sudo apt install -y git || exit
mkdir -p /home/$USER/$REPO
cd /home/$USER/ && sudo git clone https://github.com/$REPO_ACCOUNT/$REPO_NAME || exit




##
##  1)  Runs the installer
##
sudo chmod -R 757 $REPO_NAME && $REPO_NAME/scripts/__internal/__installation/__install.sh 0 || printf "\n\nFatal Error: Failed to run __install.sh."


