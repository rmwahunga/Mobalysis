#!/bin/bash

#cloning repository into user's home dorectory

cd ..

cd mob_app_user

sudo su mob_app_user

git clone https://github.com/rmwahunga/Mobalysis.git

#Adding environment variables and values to the mob_app_usr’s bashrc file

export DBNAME=mobalytics

export DBUSER=mob_db_user

export DBPASS=mob_db_pass

export DBHOST=localhost

export DBPORT=5432

git clone https://github.com/rmwahunga/Mobalysis.git

# creating the virtual environment with directory named "myenv"

mkdir myenv

cd myenv

python -m venv myenv

# activating virtual environme

source myenv/bin/activate

#installing application packages

python3 -m install requests

#new migrations

python3 [/path/to/backend application folder]/manage.py makemigrations

#Installing the backend migrations

Install the backend migrations 

git clone https://github.com/rmwahunga/Mobalysis.git 

python3 [/path/to/backend application folder]/manage.py makemigrations




sudo git clone https://github.com/rmwahunga/Mobalysis.git

