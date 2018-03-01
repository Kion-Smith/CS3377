#!/bin/bash

#Kion Smith
#kls160430
#CS 3377.0W3

#First Script to generate a random number
random()
{	#save and genertate 2 random nums
	firstNum=$[RANDOM%10+1]
	secondNum=$[RANDOM%10+1]
	#out print then numbers
	echo $firstNum
	echo $secondNum
	#Check to see if they are equal or not
	if [ "$firstNum" -eq "$secondNum" ]
	then
	echo "Match found"
	else
	echo "Different Numbers"
	fi 
}

#User use an arg to check agaisnt the computers random num
userRandom()
{
	function checkInput()
	{
		#check to see if user num is in between range 1-10
		if [ "$userNum" -ge 11 ] || [ "$userNum" -le 0 ]
		then
		echo "enter a number from 1-10"
		#check to see if they are equal
		elif [ "$userNum" -eq "$cpuNum" ]
		then
		echo "You and the computer generated the same number" $cpuNum
		else
		echo "Computer generated" $cpuNum", and you guessed" $userNum
		fi
	}

	#get user input
	if [ "$argAmount" -eq 0 ]
	then
	echo "No arguments"
	elif [ "$argAmount" -gt 1 ]
	then
	echo "Too many arguments"
	else
	#store inputs for the function
	userNum="$args"
	cpuNum=$[RANDOM%10+1]
	#go to the function
	checkInput
	fi
}

#Check to see if arg is an ordinary file
ordinaryFile()
{
	function checkForFile()
	{
		#check the filepath if is a file
		if [ -f "./$filepath" ]
		then
		echo $filename" is a ordinary file"
		else
		echo $filename" is not a ordinary file"
		fi
	}

	#check user input
	if [ "$argAmount" -le 0 ]
	then
	echo "Need at least 1 argument"
	else
	filename="$args"
	filepath="./$args"
	#do the work in function
	checkForFile
	fi
}

#use switch stament to check input
caseStatement()
{	
	#get user input
	echo "Do you like art?" 
	echo "Enter yes or no ::"   
	read userInput

	#check input to cases
	case "$userInput" in
	y|Y|yes|Yes|YES)
		echo "Agreed"
		;;
		n|N|no|No|NO)
		echo "Disagreed"
		;;
		*)
		echo "Invalid input"
		;;
	esac
}

#check all the words to find all the matches using elif and if
checkWord()
{
	#read the words
	echo "Enter the 1st word"
	read word1
	echo "now the 2nd word"
	read word2
	echo "finally the 3rd word"
	read word3

	#go through the else if statement
	if [ $word1 == $word2 ] 
	then
	if [ $word1 == $word3 ] 
	then
	echo "1st, 2nd, and 3rd words all are equal"
	else
	echo "1st word is equal to the 2nd"
	fi
	elif [ $word1 == $word3 ]
	then
	echo "1st word is equal to the 3rd"
	elif [ $word2 == $word3 ]
	then
	echo "2nd word is equal to the 3rd"
	else
	echo "None of the words are equal"
	fi
}

#check for directory through looping
checkDir()
{
	#get current directory to loop from (using pwd)
	loc=pwd
	for loc in *
	do
	if [[ -d $loc ]] 
	then
	#get rid of / from the name
	echo "$loc" | cut -d '/' -f -1
	fi
	done
}

#while-loop print 100 random nums from 1-100
randomNumsWhile()
{
	echo "Enter a file name to out put the random nums"
	read filename
	count=1
	#while count<100
	while [ "$count" -le 100 ]
	do
	randomNum=$[RANDOM%100]
	#appened to file
	echo "$randomNum" >> $filename
	count=$[count+1]
	done
	echo "Finished printing to" $filename
}

#until-loop print 100 random nums from 1-100
randomNumsUntil()
{
	echo "Enter a file name to out put the random nums"
	read filename
	count=1
	#while count<100
	until [ "$count" -ge 100 ]
	do
	randomNum=$[RANDOM%100]
	#appened to file
	echo "$randomNum" >> $filename
	count=$[count+1]
	done
	echo "Finished printing to" $filename
}

#Need to hold args and arg amount to use for the functions
argAmount=$#
args=$1

#OUTPUTS
echo "-----------------"
echo "1st script"
random
echo ""

echo "-----------------"
echo "2nd Script"
userRandom
echo ""

echo "-----------------"
echo "3rd Script"
ordinaryFile
echo ""

echo "-----------------"
echo "4th Script"
caseStatement
echo ""

echo "-----------------"
echo "5th Script"
checkWord
echo ""

echo "-----------------"
echo "6th Script"
checkDir
echo ""

echo "-----------------"
echo "7th Script"
randomNumsWhile
echo ""

echo "-----------------"
echo "8th Script"
randomNumsUntil









