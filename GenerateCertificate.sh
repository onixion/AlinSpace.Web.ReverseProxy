#!/bin/bash

sudo certbot certonly --standalone --preferred-challenges http -d $DOMAIN
