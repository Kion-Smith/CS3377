#!/bin/bash
echo "Enter a file name to out put the random nums"
read filename
count=1
until [ "$count" -ge 100 ]
do
randomNum=$[RANDOM%100]
echo "$randomNum" >> $filename
count=$[count+1]
done
echo "Finished printing to" $filename
