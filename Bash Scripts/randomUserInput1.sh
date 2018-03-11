#!/bin/bash
echo Enter 2 numbers and I will generate a random number within those bounds
echo Enter the lower bound
read num1
echo Enter the upper bound
read num2

random=$[ RANDOM % (num2-num1+1)+num1]

echo "Random number generated $random using RANDOM"



