#!/bin/bash
sudo mv /etc/hosts /etc/hosts.bak
wget http://git.oschina.net/simpleu/hosts/raw/master/hosts
sudo mv hosts /etc/hosts
sudo chmod 0644 /etc/hosts
sudo gedit /etc/hosts
