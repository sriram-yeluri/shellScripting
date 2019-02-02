#!/bin/bash

# Script to find which folder has more files

# check if arguments are passed
if [[ $# -ne 2 ]];then
	echo "Missing required arguments"
	exit 1
fi

#check if arguments are directories
if [[ ! -d $1 ]];then
	echo "$1 is not a directory"
	exit 1
fi

if [[ ! -d $2 ]];then
	echo "$2 is not a directory"
	exit 1
fi

dir1="$1"
dir2="$2"

# count files inside directories, using command substitution
count_1=$(ls -A "${dir1}" | wc -l)
count_2=$(ls -A "${dir2}" | wc -l)

if [[ ${count_1} -gt ${count_2} ]];then
	echo "${dir1} has more file"
	exit 0
elif [[ ${count_1} -eq ${count_2} ]];then
	echo "Both directories has equal files"
	exit 0
else
	echo "${dir2} has more files"
	exit 0
fi

exit 0
