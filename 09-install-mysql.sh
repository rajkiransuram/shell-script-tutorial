#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: Plaase ru this scrpt with root user"
    exit 1 # you can give other than 0 
 else
    echo "You are root user"
 fi # fi reverse of if, indicating condition end

 yum install mysql -y

 if [ $? -ne 0 ]
 then
    echo "ERROR:: Installing MySQL is failed"
    exit 1
 else
    echo "Installing MySQL SUCCESS"
 fi       