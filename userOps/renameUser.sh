#!/bin/bash

### This will rename existing user ###
#####################################
### This is only for experimental purpose only Reneming user is not recommended #####################################

#### Function to check if user exist or not
user_exists(){
 id "$1" &>/dev/null;
}

echo "This command will" 
echo "- rename use"
echo "- homes home directory"
echo "- renames user primary group fix permissions and restarts user running all user services"

######

echo "Enter the username you want to change (Oldusername): "
read olduser

# Check if user exist or not
if ! user_exists "$olduser" ; then
	 echo "User $olduser  does not exist"
	 
	 exit 1
 else
	 echo "Enter new username (Newusernamme)"
	 
## After renaming if there are any cron jobs, mail spool or other running services must be restarted

read newuser
	 if user_exists "$newuser" ; then
		 echo "User already exists, choose another name"
		 exit 1
	 else
		# Change username
		sudo usermod -l $newuser $olduser

		# Change and rename home dirctory of the user
		sudo mv "/home/"$olduser "/home/"$newuser

		# Rename user primary group (Important)
		sudo groupmod -n $newuser $olduser

		# Fix ownerships (Very Important)
		sudo chown -R $newuser:$newuser /home/$newuser

		### One Command Alternative for the above ###
		# sudo usermod -l $newuser -d /home/$newuser -m $olduser
		# groupmod -n $newuser $olduser
                #######################################################
		echo "User renamed successfully to check please use command"
		echo " ls -ld /home/$newuser"
	fi

fi

#### End of File ###
