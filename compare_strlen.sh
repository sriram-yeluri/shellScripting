#!/bin/bash

# Script to compare length of 2 strings

# check if arguments are passed
if [[ $# -ne 2 ]];then
	echo "Missing required arguments"
	exit 1
fi

# get length of arguments
count_1=${#1}
count_2=${#2}

if [[ ${count_1} -gt ${count_2} ]];then
	echo "$1 is larger"
	exit 0
elif [[ ${count_1} -eq ${count_2} ]];then
	echo "Both strings are equal "
	exit 0
else
	echo "$2 is larger"
	exit 0
fi

exit 0
