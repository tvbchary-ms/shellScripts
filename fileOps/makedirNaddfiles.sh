#!/bin/bash

### Create a directory  and add n number of files in it ###

## set debug mode

#set -x

# create a directory
mkdir testdir

# move into the directory
cd testdir

# add n number of  files in it

echo "How many files you need to add?"
read number

echo "Add suffix of file"
read suffix

for ((i=1;i<=$number;i++));do
	echo "Hello, this is : $suffix$i.txt" > $suffix$i.txt

done


### End of file ###
