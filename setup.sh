#!/bin/bash

# This script sets up the BB green/black for use with Grove modules

# set date and time
sudo ntpdate pool.ntp.org

# Update kernel #TODO with DHT?

# Install Adafruit_BBIO for python i/o capability
sudo apt-get update
sudo apt-get install build-essential python-dev python-setuptools python-pip python-smbus -y
sudo pip install Adafruit-BBIO

# Install ssh server to allow ssh in over WiFi
sudo apt-get install openssh-server
#TODO  add instructions to readme to set static ip on router

#TODO enable UART (see p49 of log book)

#TODO add other scripts to install existing repos for individual sensors
