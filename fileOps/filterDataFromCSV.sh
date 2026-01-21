#!/bin/bash


####################################
# Filter colums from csv file      #
# Written by TVB Chary             #
# Dated 19-4-2019                  #
# Version 1.00                     #
####################################

awk -F"," '{print $1,$3,$4,$6}' people-100.csv >> filteredInfo.txt
