#!/bin/bash

# step 1. clone repository
echo "Cloning repository..."
git clone https://github.com/mooose22/HealthCare-Pal.git

cd HealthCare-Pal
echo "Cloned successfully!"

# check if nodejs and npm are installed
echo "Checking Node.js and npm..."
if ! [ -x "$(command -v node)" ] || ! [ -x "$(command -v npm)" ]; then
  echo "Node.js or npm is not installed."
  exit 1
fi

# install dependecies
echo "Installing dependencies..."
npm install
echo "Dependencies installed successfully!"

# database configuration
echo "Specifying the the database "
read -p "database username: " dbusername
read -p "database name: " dbname
read -s -p "database password: " dbpassword

touch .env
echo ""
echo "DB_NAME=$dbname" > .env
echo "DB_USER=$dbusername" >> .env
echo "DB_PASSWORD=$dbpassword" >> .env

npm start
