#!/bin/bash

file_number=$(ls -p | grep -v / | wc -l)

function guess {
	if [[ $1 -lt $2 ]]
	then
		echo "Incorrect. $1 is lower than the number of files in this directory. Please try again!"
	elif [[ $1 -gt $2 ]]
	then
		echo "Incorrect. $1 is greater than the number of files in this directory. Please try again!"
	else
		echo "That's right! Congratulations!"
	fi
}

while [[ $file_number -ne $answer ]]
do
	read -p "How many files are in the current directory? " answer
	echo $(guess $answer $file_number)
done
