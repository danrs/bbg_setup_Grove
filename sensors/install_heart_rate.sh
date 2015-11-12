#!/bin/bash

# Intall software for using the Grove heart rate sensor
# For more information, see the examples and readme in the
# installed repo. It's a simple sensor that just sends out
# the heart rate in bpm as a single byte

git clone https://github.com/danrs/python_i2c_heart_rate_sensor
cd python_i2c_heart_rate_sensor
sudo python setup.py install
