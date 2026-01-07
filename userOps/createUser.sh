#!/bin/bash

# Get input to create username
echo "enter username"
read uname

# Check if user exist already
if id "$uname" &>/dev/null; then
	echo "User $uname already exists"
	exit 1
else
	sudo useradd -m "$uname"
	echo "User $uname created successfully"

fi

# Check if user created successfully or not (Optional check)
if ! id "$uname" &>/dev/null; then
	echo "user $uname does not exist"
	exit 1

fi

# Get password and confirm password phrases
read -s -p "Enter New Password: " PASSWORD
echo
read -s -p "Confirm new password: " CONFIRM
echo

# Check if passwords match or not
if [ "$PASSWORD" != "$CONFIRM" ]; then
	echo "Password do not match"
	exit1

fi

# Set key value pair and set passowrd using chpasswd
echo "$uname:$PASSWORD" | sudo chpasswd

echo "Password successfully set for $uname"

################################################
#                 End of Code                  #
################################################
