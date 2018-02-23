#!/bin/bash
# Author:			Ryan Bolesta
# Creation Date:		March 1, 2017
# Due Date:		        March 6, 2017
# Course:			CSC 352
# Professor:		        Dr. Frye
# Assignment:		        Homework 5
# Filename:		        hw5_RyanBolesta
# Purpose:                      To learn basics of shell programming by
#                               creating a command that will change the file
#                               extension of arguments that are passed to it.
#                               Only files matching the specified extension
#                               will get changed.


#USAGE CLAUSE: At a minimum, the user must specify 3 args; the old extension,
#               the new extension, and at least one file.

if [ "$3" == "" ]; then
    echo "ERROR INVALID USAGE: chngext <oldext> <newext> <file> ....."
    exit 1
fi

# Run the for loop for all arguments containing files
for X in "${@:3}"
do
    # First, check if the file exists
    if [ -a $X ];then
	    Y="`dirname $X`"
            # Check for matching extension, and make sure file != new extension
	    if [[ $X  == *"$1" && $X != "$2" ]];then
		echo "Changing the filename "$X "from "$1 "to "$2

                # Different command for cd files vs. out of directory files
		if [ $Y == "." ]; then
		    mv "$X" "`basename "$X" $1`$2"
		else
		    mv "$X" "$Y/`basename "$X" $1`$2"
		fi

	    else
                # File is equal to the extension
		if [ $X == "$2" ]; then
		    echo "The file "$X " won't evaluate because it is the extension: "$2
		else # File does not match the extension
		    echo "The file "$X" does not match the specified extension"
		fi
	    fi
     else
	echo "The file "$X" does not exist"
     fi
done
