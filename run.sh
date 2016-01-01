#!/usr/bin/env bash

echo "What is your interface name?"
read $iface
sudo ifconfig $iface down
sudo iwconfig $iface mode monitor
sudo ifconfig $iface up

sudo python ./core.py

sudo ifconfig $iface down
sudo ifconfig $iface up

#sudo iw dev wlan0 interface add $iface type monitor
#sudo ifconfig $iface up
#sudo python ./core.py
#sudo ifconfig $iface down
#sudo iw dev $iface del
