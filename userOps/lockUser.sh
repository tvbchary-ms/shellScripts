#!/bin/bash

### Locking a user

# get username
echo "Enter Username to Lock"
read username

# check if user exits or not
if ! id "$username" &>/dev/null; then
	echo "user $username does not exist"
	exit 1
else
	# locking user
	sudo passwd -l "$username"
	echo "user $username is locked successfully!"
fi


