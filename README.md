# bbg_setup_Grove
Scripts to set up the BeagleBone Green (or Black) for use with Grove sensors

## Before you start
1. These scripts assume you are running Debian 7.9 (Wheezy) for compatability with the AdaFruit_BBIO Library. As of 09/04/2016, Adafruit_BBIO does not fully support Debian 8.3 (Analog input didn't work). If you don't have Debian 7.9 installed on your BeagleBone, please install it. You can do so at https://beagleboard.org/latest-images
3. Just about everything in this guide requires sudo. If a command doesn't work, try running it as sudo or root just to make sure. On Debian, pretty much any I/O operation requires root/sudo anyway, so you may as well log in as root. (Of course, great power -> great responsibility and all that. Be careful).

## Setting up your BeagleBone
1. Power up your beaglebone and connect it to the internet. You can do this by plugging in an Ethernet cable or using a supported WiFi dongle to connect to WiFi. If you use a dongle with pre-installed drivers, you won't need to install anything to make it work - you can just plug it in and connect. I used the Adafruit mini WiFi dongle: https://www.adafruit.com/products/814

 To connect to WiFi on a BeagleBone running Debian 7.9, you will need to use the wicd network manager. The easiest way to do this is to launch the curses interface from the command line:
 ```
 $ wicd-curses
 ```
 Use the arrow keys to choose your network, and press the right arrow key to change its settings. Usually, the network's encryption type will be automatically selected, but otherwise you can choose this yourself by selecting "use encryption" and then choosing an option from the drop-down menu beneath it (press space on the encryption type). Enter your network key and, if you like, select "Automatically connect to this network". Then press F10 to save your settings and return to the wicd-curses main screen. Press C to connect to your network, and you should be sweet. Press q to quit.
 
 Note: configuring wicd-curses to work with enterprise-grade WiFi networks (such as eduroam) is difficult. You may need to consult your system admin to obtain the appropriate settings. There are also some guides online for eduroam which didn't work for me, but your mileage may vary.

2. Download this repository onto your BeagleBone.
 ```
 $ git clone https://github.com/danrs/bbg_setup_Grove
 ```
 
3. Execute the setup script (make sure you are connected to the internet first).
 ```
 $ cd bbg_setup_Grove
 $ ./setup.sh
 ```

## Installing sensor repositories
After running setup.sh, your BeagleBone is set up for Python I/O and ready to use. However, many Grove sensors have pre-existing python libraries which you can install to use them. Scripts for installing sensor libraries can be found in the "sensors" directory. To install a sensor library:
```
$ cd sensors
$ ./install_<sensor_name>.sh
```
Where appropriate, the install scripts also contain some comments indicating where you can find information on how to use the sensor.

## Setting up a static IP
If you want to SSH to your BeagleBone over a local area network instead of over the USB serial connection that is set up by default, you can do so by assigning your BeagleBone a static IP address. One way to do this is to bind the BeagleBone's MAC address to a static IP in your router's settings - speak to your sysadmin if you don't have access to the router yourself. Alternatively, you may be able to force your BeagleBone to use a static IP on your network by editing the settings in wicd-curses, but I couldn't make this work.

Written by Daniel Smith for UNSW Australia and LaTrobe University.
MIT license and all text above must be included in any redistribution
