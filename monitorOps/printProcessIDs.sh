#!/bin/bash

### This will only fileter the process Ids of current linux processes


# Use piping to filter and save it into a file


ps -ef | awk -F" " '{print $2}' > pslog.txt
