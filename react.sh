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



#moving to the default root folder of the web server

cd  /var/www/html/


#cloning  react-app

sudo git clone  https://github.com/rmwahunga/Mobalysis.git

cd /Mobalysis/frontend

sudo npm install

sudo npm build

#copy build files

sudo cp -r /var/www/html/Mobalysis/frontend/*/var/www/html

sudo rm -rf index.nginx.debian.html

#restart nginx

sudo systemctl reload nginx



