#!/bin/bash


### Create Group ###
clear

echo "This will create groups"
echo "-----------------------"

echo "Enter group name"
read GROUP

if getent group "$GROUP" >/dev/null; then
	echo "Group $GROUP already exists"
	exit 1
else
	sudo groupadd $GROUP
	echo "Group $GROUP addedd successfully!"
fi

### End of Code ###
