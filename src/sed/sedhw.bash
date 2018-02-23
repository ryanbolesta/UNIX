#!/bin/bash

# Author:				Ryan Bolesta
# Creation Date:		April 23, 2017
# Due Date:		        April 24, 2017
# Course:				CSC 352
# Professor:		    Dr. Frye
# Assignment:		    Homework 12
# Filename:		        sedhw.bash
# Purpose:              To learn the sed command by manipulating lines of text
#						in several different text files.


echo "1. Delete the last character in each line in a file"
sed 's/.$//' < students3.dat

echo "2. Delete the second word in each line in a file"
sed -e 's/[^[:alnum:]_][[:alnum:]_][[:alnum:]_]*//1' < students3.dat

echo "3. Delete any integer in each line in a file"
sed 's/[0-9]*//g' < students3.dat

echo "4. Replace all spaces at the beginning of each line with a tab"
sed '/^\s/s/\s/\t/' < testfile.dat

echo "5. Extract the year from each occurrence of a date in the form mm/dd/yyyy"
sed 's/[0-1][0-9]\/[0-3][0-9]\/\([12][0-9][0-9][0-9]\)/\1/g' < dates.dat