# bbg_setup_Grove
Scripts to set up the BeagleBone Green (or Black) for use with Grove sensors

## Before you start
1. This guide (and the scripts within it) assumes you are running Debian 7.9 (Wheezy) for compatability with the AdaFruit_BBIO Library. As of 09/04/2016, this library does not fully support Debian 8.3 (Analog input didn't work). If you don't have Debian 7.9 installed on your BeagleBone, please install it. You can do so at https://beagleboard.org/latest-images
3. Just about everything in this guide requires sudo. If a command doesn't work, try running it as sudo or root just to make sure. On Debian, pretty much any I/O operation requires root/sudo anyway, so you may as well log in as root. (Of course, great power -> great responsibility and all that. Be careful).

## Setting up your BeagleBone
1. Power up your beaglebone and connect it to the internet. You can do this by plugging in an Ethernet cable or using a supported WiFi dongle to connect to WiFi. If you use a dongle with pre-installed drivers, you won't need to install anything to make it work - you can just plug it in and connect. I used the Adafruit mini WiFi dongle: https://www.adafruit.com/products/814

To connect to WiFi on a BeagleBone running Debian 7.9, you will need to use the wicd network manager. The easiest way to do this is to launch the curses interface from the command line:
    $ wicd-curses
Use the arrow keys to choose your network, and press the right arrow key to change its settings. Usually, the network's encryption type will be automatically selected, but otherwise you can choose this yourself by selecting "use encryption" and then choosing an option from the drop-down menu beneath it (press space on the encryption type). Enter your network key and, if you like, select "Automatically connect to this network". Then press F10 to save your settings and return to the wicd-curses main screen. Press C to connect to your network, and you should be sweet.

2. Download this repository onto your BeagleBone.
    $ curl something_or_other

