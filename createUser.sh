#!/bin/bash

echo "enter username"
read uname
sudo useradd -m $uname

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
