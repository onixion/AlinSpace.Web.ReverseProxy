#!/bin/bash
sudo systemctl stop nginx.service

# Obtain new certificate.
sudo certbot certonly --standalone --preferred-challenges http -d alin.space

sudo mkdir /etc/nginx/sites-available/
sudo mkdir /etc/nginx/sites-enabled/

sudo cp config/nginx.conf /etc/nginx/
sudo cp config/reverse_proxy.conf /etc/nginx/sites-available/

sudo rm /etc/nginx/sites-enabled/reverse_proxy.conf
sudo ln -s /etc/nginx/sites-available/reverse_proxy.conf /etc/nginx/sites-enabled/reverse_proxy.conf

sudo systemctl start nginx.service
sudo systemctl enable nginx.service
