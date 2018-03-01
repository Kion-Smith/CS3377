#!/bin/bash
echo "Enter the 1st word"
read word1
echo "now the 2nd word"
read word2
echo "finally the 3rd word"
read word3

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
