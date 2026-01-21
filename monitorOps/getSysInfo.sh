#!/bin/bash


#####################################
#  Written by tvbchary              #
#  Dated 21-01-2019                 #
#  Version 1.10                     #
#####################################

# Set debug mode
set -x

df -h  > sysInfo.txt

free -h >>sysInfo.txt

echo "Number of processors: " >> sysInfo.txt
nproc >> sysInfo.txt

du -sh >> sysInfo.txt

lsblk >> sysInfo.txt

vmstat >>sysInfo.txt



