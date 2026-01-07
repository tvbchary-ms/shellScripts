#!/bin/bash

## This code will delete user along with it home directory
echo "enter user name"
read  username

# Check if user exist or not

if ! id "$username" &>/dev/null; then
	echo "No such user exist"
	exit 1
else
	sudo userdel -r "$username"
	echo "User $username deleted successfully!"

fi


### End of the file ###
