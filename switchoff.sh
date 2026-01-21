#!/bin/bash

# Shutdown system in given minutes
#set -x # debug mode off

echo "WARNING!!!!"
echo "This will shutdown the system in given number of minutes!"

echo ""
echo "Enter number of minutes! enter 9999 to cancel this! "
read minutes

if [ $minutes -eq 9999 ]; then
	echo "Aborting shutdown! "
	exit 1
else
	shutdown $((minutes))
fi


#end of code
