#!/bin/bash

# Install software to run the BMP180 temperature sensor/barometer
#
# Information on usage can be found here:
# https://learn.adafruit.com/using-the-bmp085-with-raspberry-pi/using-the-adafruit-bmp-python-library
#
# Alternately, look at the readme and examples in the downloaded repository

git clone https://github.com/adafruit/Adafruit_Python_BMP.git
cd Adafruit_Python_BMP
sudo python setup.py install
