#!/usr/bin/env bash

# WiFi Fix
sudo echo "blacklist btusb" >> /etc/modprobe.d/blacklist.conf
sudo echo "blacklist btrtl" >> /etc/modprobe.d/blacklist.conf

