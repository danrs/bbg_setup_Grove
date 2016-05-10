#!/bin/bash

# This script sets up the BB green/black for use with Grove modules

# Continue function for y/n interactivity
continueYN () {
    # call with a prompt string or use a default
    read -r -p "${1:-Continue anyway? [y/N]} " response
    case $response in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}

# Script starts here
echo "Testing internet connection..."
case "$(curl -s --max-time 5 -I http://google.om | head -1 | sed 's/^[^ ]*  *\([0-9]\).*/\1/')" in
    [23]) echo "Internet connection (HTTP) is up";;
    5) echo "Web proxy seems to be blocking internet access."
        continueYN || exit;;
    *) echo "Network appears to be down or lagging."
        continueYN || exit;;
esac

echo "Setting up BeagleBone..."
# set date and time
sudo ntpdate pool.ntp.org

# Update kernel
# Uncomment the line below to update the kernel (may improve WiFi performance)
#sudo /opt/scripts/tools/update_kernel.sh

# Install Adafruit_BBIO for python i/o capability
sudo apt-get update
sudo apt-get install build-essential python-dev python-setuptools python-pip python-smbus -y
sudo pip install Adafruit-BBIO

# Install ssh server to allow ssh in over WiFi
sudo apt-get install openssh-server

#TODO  add instructions to readme to set static ip on router

#TODO enable UART (see p49 of log book)

#TODO add other scripts to install existing repos for individual sensors

