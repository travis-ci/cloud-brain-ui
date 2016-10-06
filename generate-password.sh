#!/bin/bash

# from https://www.digitalocean.com/community/tutorials/how-to-set-up-password-authentication-with-nginx-on-ubuntu-14-04

USER=travis
PASS=$(openssl rand -base64 32)
HASH=$(echo $PASS | openssl passwd -stdin)

echo "password: $PASS"
echo "htpasswd: $USER:$HASH"
echo
echo "set the NGINX_HTPASSWD variable on heroku to htpasswd"
