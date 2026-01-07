#!/bin/bash

### Adding user to a specific group ###

echo "This will add group to the user "

echo "Enter group name"
read GROUP

# check if group exist or not

if ! getent group "$GROUP" >/dev/null; then
       echo "This group $GROUP does not exist"
	exit 1

else
	echo "Enter Username to add to the above group"
	read username

	if ! id "$username" &>/dev/null; then
		echo "User $username does not exits"
		exit 1
	else
		if id "$username" | grep -qw "$GROUP"; then
			echo "user $username already exist in the group $GROUP"
			exit 1
		else
			sudo usermod -aG "$GROUP" "$username"
			echo "user $username successfully added to the group $GROUP"
		fi
	fi
fi


### End of file ###

