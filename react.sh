#!/bin/bash

#updating ubuntu

sudo apt-get update

#installing  curl

sudo apt-get install curl -y

curl -SL https://deb.nodesource.com/setup_14.x | sudo -E bash .

#installing  nodejs

sudo apt-get install -y nodejs

#installing  nginx

sudo apt-get install nginx -y

#confirming  nginx version
 
nginx  -v

sudo systemctl reload nginx

#moving to the default root folder of the web server

cd  /var/www/html/

#creating  react app

npx  create-react-app react-tutorial

cd react-tutorial

npm start

