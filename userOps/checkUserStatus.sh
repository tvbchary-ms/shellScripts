#!/bin/bash


## Check user password policy

echo "this will provide user password policy info"

echo "Enter Username"
read username

if ! id "$username" &>/dev/null; then
	echo "User $username does not exist"
	exit 1
else
	status=$(sudo passwd -S "$username" | awk '{print $2}')
	
	if [ "$status" = "LK" ]; then
		echo "User $username is LOCKED"
	elif [ "$status" = "PS" ]; then
		echo "User $username is UNLOCKED (password set)"
	elif [ "$status" = "NP" ]; then
		echo "User $username has NO password"
	else
		echo "Unknown Status"
	fi
fi

### End of the file ###


