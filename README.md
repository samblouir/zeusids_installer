# zeusids_installer

Zeus Intrusion Detection System. The zeusids repository is being updated nightly for research on generalizing against detecting (and stopping) network-based malicious attacks.

# Usage

Type "zeus help" into the terminal once installed to view available commands.

# Features

A large system consisting of:

--Web traffic generators walking along the previous years of most popular websites to simulate a realistic look into past-network traffic.

--Automated Metasploit attacks on VMs of XP, Vista, and Ubuntu.

--A text-based UI designed for simplicity, ease-of-use, and power (from starting a server at a specific IP from automated updating, building, testing, and pushing images to docker).

--An internal network-based communication library intended for assigning jobs and sending model weights and other instructions to distributed workers over the internet or LAN built off of primitive sockets from NNG.

--PyTorch and Tensorflow nightlies, with a number of supporting packages.

--Build and install Python 3.9.1 from source.

--Pulls down the ~13GB zeusids image via Docker.

--Optionally installs Lambdastack onto your computer to run CUDA outside Docker.

# Installation Instructions

To install, just download zeusids_installer.sh, open the terminal (CTRL+ALT+T),
cd to the directory this file is located in, and run this command:

sudo chmod +x ./zeusids.sh && ./zeusids.sh

This will give the script execution permissions, and then run it. The script will automatically pull the zeusids repo into a folder it creates at $HOME/zeusids, then it will install everything.


# Requirements
Designed for Ubuntu 20.04. 
