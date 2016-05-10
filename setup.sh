#!/bin/bash

# This script sets up the BB green/black for use with Grove modules

# Functions for y/n interactivity
response_yN () {
    read -r -p "${1:-Continue? [y/N]} " response
    case $response in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}

response_Yn () {
    read -r -p "${1:-Continue? [Y/n]} " response
    case $response in
        [nN][oO]|[nN]) 
            false
            ;;
        *)
            true
            ;;
    esac
}


# Script starts here
echo "Testing internet connection..."
case "$(curl -s --max-time 5 -I http://google.om | head -1 | sed 's/^[^ ]*  *\([0-9]\).*/\1/')" in
    [23]) echo "Internet connection (HTTP) is up";;
    5) echo "Web proxy seems to be blocking internet access."
        response_yN "Continue anyway? [y/N]" || exit;;
    *) echo "Network appears to be down or lagging."
        response_yN "Continue anyway? [y/N]" || exit;;
esac

echo "Setting up BeagleBone..."
# set date and time
sudo ntpdate pool.ntp.org

# Update kernel (may require a reboot, untested)
# Uncomment the line below to update the kernel (may improve WiFi performance)
#sudo /opt/scripts/tools/update_kernel.sh

# Install Adafruit_BBIO for python i/o capability
sudo apt-get update
sudo apt-get install build-essential python-dev python-setuptools python-pip python-smbus -y
sudo pip install Adafruit-BBIO

# Install ssh server to allow ssh in over WiFi
sudo apt-get install openssh-server

# Enable UART
sudo echo "cape_enable=capemgr.enable_partno=BB-UART2" >> /boot/uEnv.txt # UART 2 only
#sudo echo "cape_enable=capemgr.enable_partno=BB-UART1,BB-UART2" >> /boot/uEnv.txt # UART 1 and 2

echo "Installations complete!"

# Reboot to apply changes
echo "Reboot required for changes to take effect."
response_Yn "Reboot now? [Y/n]" && sudo reboot

