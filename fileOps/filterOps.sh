#!/bin/bash


######################################
# Written by TVB Chary               #
# Filter text using grep, awk        #
# Version 1.00                       #
######################################


# This will read a file and filters the data"
echo "Name: "
grep name info.txt | awk -F"," '{print $4}' #-F "" Separator and $X is column number
