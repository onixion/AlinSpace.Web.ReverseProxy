#!/bin/bash

docker run -d -p 80:80 -p 443:443 -p 5000:5000 -v /etc/letsencrypt/live/$DOMAIN:/etc/nginx/certificates onixion/alinspace_web_reverse_proxy
