#!/bin/bash

# Install software for using the MQ5 gas sensor
# This sensor is dead simple - just an analog input
# - so you don't actually need any new software, but
# here's a nice repo with some example code and a class
# to make it nice and easy anyway.
#
# If you want further reading, this repo is basically a shell
# around the Adafruit_BBIO library. You can read about it here:
# https://learn.adafruit.com/setting-up-io-python-library-on-beaglebone-black/adc

git clone https://github.com/modular-CAT/python_mq5_gas_sensor.git
cd python_mq5_gas_sensor
sudo python setup.py install
