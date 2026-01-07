#!/bin/bash


### Delete Group ###
clear

echo "This will delete groups"
echo "-----------------------"

echo "Enter group name"
read GROUP

if ! getent group "$GROUP" >/dev/null; then
	echo "Group $GROUP does not exist"
	exit 1
else
	sudo groupdel $GROUP
	echo "Group $GROUP deleted successfully!"
fi

### End of Code ###
