#!/bin/bash
#Start of shell script
echo "Enter a number and I will add 10"
read num

#This is a shell function
function addNum()
{
	num=$(($num +10))
	echo $num
}

#Function call
addNum

