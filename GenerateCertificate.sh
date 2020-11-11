#!/bin/bash

export DOMAIN=alin.space
sudo certbot certonly --standalone --preferred-challenges http -d $DOMAIN
