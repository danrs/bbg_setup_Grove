#!/bin/bash

# Install software for using the gpd sensor
#
# See the page below for usage information (grove gps is very similar to this one):
# https://learn.adafruit.com/adafruit-ultimate-gps-on-the-raspberry-pi/using-your-gps
#
# Before using gps in python, start the client:
# $ sudo killall gpsd
# $ sudo gpsd /dev/ttyO2 -F /ver/run/gpsd.sock # ttyO2 is the device for UART2
#
# You can also test your sensor on the command line with:
# $ cgps -s
# or:
# $ gpsmon
#

sudo apt-get update
sudo apt-get install gpsd gpsd-clients python-gps

