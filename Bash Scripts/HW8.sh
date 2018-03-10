#!/bin/bash
#Kion Smith
#kls160430	
#CS 3377.0W3

#Global variables
random=$[RANDOM%129+0] #the random number
numOfGuess=0 #number of guesses

#The main loop used for checking guess
userInput() 
{
	#Get user input
	echo "Enter a number from 0 - 128"
	read userInput

	#Makes sure user input is between 0 and 128
	if [ "$userInput" -gt 128 ] || [ "$userInput" -le -1 ];then
	{
		echo This is num is not within the range
		userInput
	}
	fi
	
	#check to see if user input is higher,lower or equal to the random num
	if [ "$userInput" -eq "$random" ];then
	{
		#increment by 1
		numofGuess=$[numofGuess+1]
		echo "You guessed correctly in $numofGuess number of guesses"
		highScore #go to end of script
		
	}
	elif [ "$userInput" -gt "$random" ];then
	{
		#increment by 1
		numofGuess=$[numofGuess+1]
		echo  High guess
		userInput #loop
	}
	elif [ "$userInput" -le "$random" ];then
	{
		#increment by 1
		numofGuess=$[numofGuess+1]
		echo Low guess
		userInput #loop back 
		
	}
	fi
}
#end of script function to get highscores
highScore()
{
	#get user name to place in file
	echo What is your name?
	read userName

	#store name and number of guess
	echo "$userName $numofGuess" >> highscores.txt
	echo
	echo HighScores
	echo ----------------------
	#sort file by the second col and by numbers
	sort -k 2 -n highscores.txt 
}
#start the program
userInput



