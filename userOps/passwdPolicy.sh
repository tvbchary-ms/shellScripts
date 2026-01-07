#!/bin/bash

### Password expiry setting

# get username
echo "Enter Username "
read username

# check if user exits or not
if ! id "$username" &>/dev/null; then
	echo "user $username does not exist"
	exit 1
else
	# get password expire in days
	echo "Enter Password expiry in days"
	read days
	sudo chage -M "$days" "$username"
	echo "user $username password is successfully set to expire in $days days!"
fi


