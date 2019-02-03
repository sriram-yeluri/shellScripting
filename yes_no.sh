#!/bin/bash

#script to test user input for Yes or No

# -n : do not output the trailing new line
echo -n "Are you sure (y/n) : "

answered=""
while [[ ! $answered ]]; do
	#read only one character(-n 1) and do not display the input (-s)
read -r -n 1 -s answer
if [[ ${answer} = [yY] ]];then 
	answered="yes"
elif [[ ${answer} = [nN] ]];then
	answered="No"
fi
done
echo "User answer : ${answered}"
