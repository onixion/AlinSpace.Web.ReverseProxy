#!/bin/bash

# Install certbot.
wget -O epel.rpm –nv https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum install ./epel.rpm -y
rm ./epel.rpm

sudo yum install python2-certbot-apache.noarch -y

# Install nginx.
sudo yum install nginx -y

echo "Done!"