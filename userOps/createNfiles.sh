#!/bin/bash

#### This will create n number of text files 
#### to practice file operations in Linux


echo "Enter number of file you need to create"
read n


for ((i=1; i<=$n; i++))
do 
	touch file$i.txt
done

## End of file
