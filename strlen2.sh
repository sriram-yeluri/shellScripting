#!/bin/bash
#Script to get string length
if [[ $# -ne 1 ]];then
	echo "Missing arguments"
	exit 1
fi
str1=$1
str2=${#str1}
echo "Length of str1 = $str2"

#Find string length using command substitution
str1="Hello World"
len=$(echo -n ${str1} | wc -c)
echo "string length : ${len}"
