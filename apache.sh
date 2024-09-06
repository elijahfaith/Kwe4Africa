#!/bin/bash


# Updating and upgrading package manager
echo "Update and Upgrade Package Manager"
sudo apt-get update -y
sudo apt-get upgrade -y

echo "Installing Apache Web server"
sudo apt-get install -y apache2 apache2-utils
sudo service apache2 start

echo "Done installing Apache2"

# copying apachewebsite from the hoste machine to the remote server
cp -r /vagrant/apachewebsite/* /var/www/html/


echo "ip address"
ip addr show

echo "Done provisioning apache server on VM"
