#!/bin/bash
#check it input is same as cpu's random
function checkInput()
{
if [ "$userNum" -ge 11 ] || [ "$userNum" -le 0 ]
then
echo "enter a nnumber form 1-10"
elif [ "$userNum" -eq "$cpuNum" ]
then
echo "You and the computer generated the same number" $cpuNum
else
echo "Computer generated" $cpuNum", and you guessed" $userNum
fi
}

#get user input
if [ "$#" -eq 0 ]
then
echo "No args"
elif [ "$#" -gt 1 ]
then
echo "Too many args"
else
#store inputs for the function
userNum="$1"
cpuNum=$[RANDOM%10+1]
checkInput
fi



