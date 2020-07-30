#!/bin/sh

NAME=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 12 | head -n 1)
echo $NAME | sudo tee  /etc/hostname
sudo sed -i -e 's/^.*hostname-setter.*$//g' /etc/hosts
echo "127.0.1.1      " $NAME " ### Set by hostname-setter"  | sudo tee -a /etc/hosts

sudo service hostname.sh stop
sudo service hostname.sh start

echo "Hostname set. Log out to see it on the command line"
