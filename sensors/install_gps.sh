#!/bin/bash

# Install software for using the gpd sensor
#
# See the page below for usage information (grove gps is very similar to this one):
# https://learn.adafruit.com/adafruit-ultimate-gps-on-the-raspberry-pi/using-your-gps
#
# You can also test your sensor on the command line with:
# $ cgps -s
#

sudo apt-get update
sudo apt-get install gpsd gpsd-clients python-gps

