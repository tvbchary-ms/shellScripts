#!/bin/bash

################################################
#    Check if Condition                        #
#    Written by TVB Chary                      #
#    Dated  6-4-2015                           #
#    Version 1.0                               #
################################################


# This will check which number is big between the two numbers entered

# get number one on traditional method
echo "Enter first number"
read a

# get second number in single liner
read -p "Enter Second number: " b


if ! [[ "$a" =~ ^-?[0-9]+$ ]] || ! [[ "$b" =~ ^-?[0-9]+$ ]]; then
	echo "One of the inputs is not a Valid integer, please check and enter correct values!"
	exit 1
fi

if ((a>b));then
	echo "First number $a is big"
elif((a<b));then
	echo "Second number $b is big"
else
	echo "Both are equal"
fi



