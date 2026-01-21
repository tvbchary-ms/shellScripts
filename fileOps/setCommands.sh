#!/bin/bash

#######################################
#   All Set commands will be tested   #
#   Written by TVB Chary              #
#   Dated 20-04-2019                  #
#   Version 1.00                      #
#######################################



set -x # Enabled debugmode
set -e # Exits the code when there is a failure
set -o pipefail # Checks failure in pipes as well


df -h

asgkjghkj | echo "Set -o pipefail, pipefailed will exit code"

free -g
