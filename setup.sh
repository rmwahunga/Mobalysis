#!/bin/bash

#Installing postgresql

sudo apt update

sudo apt install postgresql postgresql-contrib

#Creating user with password

sudo -u postgres psql -c "create user mob_db_usr with password 'mob_db_pass'"

#creating user home directory

sudo useradd -m -d/home/mob_app_usr mob_app_usr

#cloning repository 

git clone https://github.com/rmwahunga/Mobalysis.git

#installing python3-venv

sudo apt install python3-venv

#creating an empty database with the name mobalytics

sudo -u postgres psql -c "create database mobalytics"

#setting the owner of the mobalytics database to mob_db_user

sudo -u postgres psql -c "alter dabadase mobalytics owner to mob_db_usr"

git clone https://github.com/rmwahunga/Mobalysis.git
