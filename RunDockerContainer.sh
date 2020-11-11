#!/bin/bash

docker run -d -p 80:80 -p 443:443 --network=alinspace-net --ip=10.0.0.9 -v /etc/letsencrypt/live/$DOMAIN:/etc/nginx/certs onixion/alinspace_web_reverse_proxy:latest
