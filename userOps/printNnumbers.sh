#!/bin/bash


###### Print n Numbers using yes command


echo "Enter number of lines you need"
read num

echo "Enter the text you wanted to add as line"

read text

echo "Enter file name without extension "
read file

## Print n number of lines and save to a file

yes "$text" | head -n $num | nl > $file.txt

### End of code


