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

if ! id "$uname" &>/dev/null; then
	echo "user $uname does not exist"
	exit 1

fi

read -s -p "Enter New Password: " PASSWORD
echo
read -s -p "Confirm new password: " CONFIRM
echo


if [ "$PASSWORD" != "$CONFIRM" ]; then
	echo "Password do not match"
	exit1

fi

echo "$uname:$PASSWORD" | sudo chpasswd

echo "Password successfully set for $uname"
