#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR:: Installing $2 is failed"
        exit 1
    else
        echo "$2 ... is SUCCESS"
    fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: Plaase ru this scrpt with root user"
    exit 1 # you can give other than 0 
 else
    echo "You are root user"
 fi # fi reverse of if, indicating condition end

  yum install mysql -y

  VALIDATE $? "Installing MySQL"

  yum install git -y

  VALIDATE $? "Installing Git"