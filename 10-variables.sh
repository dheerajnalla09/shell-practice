#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
  echo "Please run this script with root user access"
  exit 1
fi
#by default 
VALIDATE(){
echo "Installing Nginx"
dnf install nginx -y
if [ $1 -ne 0 ]; then
  echo "$2... FAILURE"
  exit 1
else
  echo "$2... SUCCESS"
fi

}
echo "Installing Nginx"
dnf install nginx -y

VALIDATE $? "Nginx installtion"

echo "Installing MariaDB (MySQL compatible)"
dnf install mariadb105-server -y
if [ $? -ne 0 ]; then
  echo "Installing MariaDB... FAILURE"
  exit 1
else
  echo "Installing MariaDB... SUCCESS"
fi

echo "Installing Node.js"
dnf install nodejs -y
if [ $? -ne 0 ]; then
  echo "Installing Node.js... FAILURE"
  exit 1
else
  echo "Installing Node.js... SUCCESS"
fi
