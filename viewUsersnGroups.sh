#!/bin/bash

# This code will list users and groups 

# Print users
echo "Users"
echo " "
cut -d: -f1 /etc/passwd

echo "####################### "
echo "Groups"
echo " "
cut -d: -f1 /etc/passwd

### End Of file ###
