#!/bin/bash
echo Enter 2 numbers and I will generate a random number within those bounds
echo Enter the lower bound
read num1
echo Enter the upper bound
read num2

random=$(shuf -i $num1-$num2 -n 1)

echo  "Random number generated $random using shuf"



