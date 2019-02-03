#!/bin/bash

# script to explain about user inputs

read -p "Enter your name : " name

#prompt for password, but do not echo to screen
read -s -p "Enter your password : " passwd

echo "Your Name is : ${name}"
echo "Your password is : ${passwd}"
