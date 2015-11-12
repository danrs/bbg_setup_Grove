#!/bin/bash

# Install software to use the MPU9250 inertial measurement unit
# also known as Grove 10DOF IMU
#
# For more information on usage, check out the examples and readme
# in the repo installed by this script

git clone https://github.com/danrs/python_i2c_mpu9250
cd python_i2c_mpu9250
sudo python setup.py install
