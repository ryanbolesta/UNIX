#!/bin/bash
# Author:			Ryan Bolesta
# Creation Date:	April 30, 2017
# Due Date:		    May 1, 2017
# Course:			CSC 352
# Professor:		Dr. Frye
# Assignment:		Homework 13
# Filename:		    awk.bash
# Purpose:          To learn how to use the awk command by manipulating output,
#					inserting fields into files, and making calculations based
#					on the data in a file.



echo "1. The total number of input lines in a file"
awk 'END{print NR}' testing2.dat

echo "2. The number of fields in each line of a file"
awk '{print NF}' testing2.dat

echo "3. The number of fields in the file"
awk 'BEGIN{ x = 0; } { x += NF; } END{print x}' testing2.dat

echo "4. Add the title “Employee Data” at the top of the file"
awk 'BEGIN { print "Employee Data" }1' employees2.dat

echo "5. Print the whole record for employees that worked more than 40 hours"
awk '(NR == 1 || $4 > 40)' employees2.dat

echo "6. Print the whole record for employees that worked between 20 and 30 hours, inclusive"
awk '(NR == 1 || ($4 >= 20 && $4 <= 30))' employees2.dat

echo "Part 7 of HW: "
awk -f hw13.awk employees2.dat

echo "8. output of the netstat command to just show the address for all clients currently connection to csitrd.kutztown.edu using ssh and http."

netstat | awk ' $4 == "csitrd.kutztown.edu:ssh" || $4 == "csitrd.kutztown.edu:http" { print $0 }'