
sys_user="mob_app_usr"

user_dir=/home/$sys_user

echo "creating user with home directory..."

sudo useradd -m -d $user_dir $sys_user

echo "Cloning forked repository into home directory of user..."

cd $user_dir


echo "removing existing files from user directory..."

sudo rm -rf $user_dir/*

#setting enviromental variables

export DBNAME="mobalytics"

export DBUSER="mob_db_user"

export DBPASS="mob_db_pass"

export DBHOST="localhost"

export DBPORT="5432"


# Getting latest updates

sudo apt update

sudo apt upgrade

#installing package manager

sudo apt install python3-pip

#installing venv package

sudo apt-get install python3-venv

# creating the virtual environment with directory named "my_env_project"

sudo python3 -m venv my_env_project

# activating virtual environment

source ./my_env_project/bin/activate


#verifying environment

python3

#creating a database mobalytics

sudo -u postgres pqsl createdb mobalytics -c createuser mob_db_user


sudo git clone https://github.com/rmwahunga/Mobalysis.git
