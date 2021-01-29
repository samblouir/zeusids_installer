# zeusids-installer

Zeus Intrusion Detection System. The zeusids repository is updated nightly for research on generalizing against detecting (and stopping) network-based malicious attacks.

Installs this repo locally:

https://github.com/samblouir/zeusids

# Usage

Type "zeus help" into the terminal to view available commands.


# Features

A large system consisting of:

--Zeus sockets, a concurrent network-based communication library intended for assigning jobs and sending model weights and other instructions to distributed workers over the internet or LAN built off NNG. Shared memory for zero-overhead network read and writes for the main process.

--Automated Metasploit attacks on VMs of XP, Vista, and Ubuntu.

--A text-based UI designed for simplicity, ease-of-use, and power (from starting a server at a specific IP from automated updating, building, testing, and pushing images to docker).

--PyTorch and Tensorflow nightlies, with a number of supporting packages.

--Build and install Python 3.8.7 from source.

--Pulls down multiple zeusids images via Docker.

--Optionally installs Lambdastack onto your computer to run CUDA outside Docker.

# To-do

--Web traffic generators walking along the previous years of most popular websites to simulate a realistic look into past-network traffic.


# Installation Instructions

To install, just download zeusids_installer.sh, open the terminal (CTRL+ALT+T),
cd to the directory this file is located in, and run this command:

sudo chmod +x ./zeusids.sh && ./zeusids.sh

This will give the script execution permissions, and then run it. The script will automatically pull the zeusids repo into a folder it creates at $HOME/zeusids, then it will install everything.


# Requirements
Designed for Ubuntu 20.04. 
