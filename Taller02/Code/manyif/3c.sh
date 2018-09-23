#!/bin/bash

# Prompt for a user name...
echo "Please enter your name:"
read USERNAME

# Check for the file.
if [ -s ${USERNAME}_DAT ]; then # use -s to evaluate if the file exits. If a new string is added to a variables, the variable must be enclosed in curly brackes.
        # Read the age from the file.
        AGE=`cat ${USERNAME}_DAT`
        
#AGE=`cat ${USERNAME}_DAT` This is how you execute a command and put the text output from the command into a variable. The unix command cat reads the file named ${USERNAME}_DAT and outputs it to the console. Instead of putting it to the console in our script, we wrap the command with the character `, this puts the text into our variable AGE. 

echo "You are $AGE years old!"
else
        # Ask the user for his/her age
        echo "How old are you?"
        read AGE

	if [ "$AGE" -le 2 ]; then
		echo "You are too young!"
	else
		if [ "$AGE" -ge 100 ]; then
			echo "You are too old!"
		else
        		# Write the age to a new file.
        		echo $AGE > ${USERNAME}_DAT
        	fi
        fi
fi
