#!/bin/sh




### This script installs zeusids and Nvidia drivers and CUDA tools locally
### To install zeusids, open the terminal (CTRL+ALT+T),
### cd to the directory this file is located in, and enter this command:
###
###		sudo chmod +x ./zeusids.sh && ./zeusids.sh




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
cd /home/$USER/ && sudo git clone https://github.com/$REPO_ACCOUNT/$REPO_NAME




##
##  1)  Runs the installer
##
$REPO_NAME/scripts/installation/__install.sh

