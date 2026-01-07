#!/bin/bash

### Unlocking a locked user

# get username
echo "Enter Username to Unlock"
read username

# check if user exits or not
if ! id "$username" &>/dev/null; then
	echo "user $username does not exist"
	exit 1
else
	# unlocking user
	sudo passwd -u "$username"
	echo "user $username is unlocked successfully!"
fi


