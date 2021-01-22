#!/bin/bash




### This script installs zeusids with Nvidia drivers, CUDA tools, and other required packages locally.
### To run this, open the terminal (CTRL+ALT+T), cd to the directory this file is located in,
### and enter this command:
###
###		sudo chmod +x ./zeusids_network_installer.sh && ./zeusids_network_installer.sh
###
### *** WARNING!!! This will erase the $HOME/$REPO_NAME directory ($REPO_NAME is set to zeusids) ***




##
## Constants (Don't change these!)
##
REPO_NAME="zeusids"
REPO_ACCOUNT="samblouir"

ask_if_user_wants_to_rm_install_dir(){

	
	
	#printf "\nYou said: \"$USER_ANSWER\"\n"
	
	read -p "The directory already exists. Perform rm -r to continue installation? y/N: " USER_ANSWER
	case ${USER_ANSWER:0:1} in
	    y|Y )
		sudo rm -r /home/$USER/$REPO_NAME && mkdir /home/$USER/$REPO_NAME || exit 1
	    ;;
	    * )
		exit 1
	    ;;
	esac

}


##
##  0)  Clones the zeusids repo locally
##
sudo apt update && sudo apt upgrade -y
sudo apt install -y git python-is-python3 inotify-tools gnome-tweaks || exit 1
mkdir /home/$USER/$REPO_NAME || ask_if_user_wants_to_rm_install_dir
cd /home/$USER/ && sudo git clone https://github.com/$REPO_ACCOUNT/$REPO_NAME || exit 1




##
##  1)  Runs the installer
##
sudo chmod -R 757 $REPO_NAME && $REPO_NAME/scripts/__internal/__installation/__install.sh 0 \
|| printf "\n\nFatal Error: Failed to run __install.sh.\n" || exit 1

exit 0


