#!/bin/bash
echo "Do you like art?" 
echo "Enter yes or no ::"   
read userInput
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
