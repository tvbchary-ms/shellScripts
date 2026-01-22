#!/bin/bash


############################################
#  Simple for loop                         #
#  Written by TVB Chary                    #
#  Dated 06-04-2015                        #
#  Version 1.0                             #
############################################


# print numbers in a given range

read -p "Enter a valid integer range : " a


# Check if it is a valid input or not

if ! [[ "$a" =~ ^-?[0-9]+$ ]]; then
	echo "input is not valid, enter valid integer!!! "
	exit 1

fi

for ((i=1;i<=$a;i++)); do
	echo "$i"
done


