#!/bin/bash

function checkForFile()
{
if [ -f "$filepath" ]
then
echo $filename" is a ordinary file"
else
echo $filename" is not a ordinary file"
fi
}

if [ "$#" -le 0 ]
then
echo "Need at least 1 argument"
else
filename="$1"
filepath="./$1"
checkForFile
fi
