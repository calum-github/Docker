#/bin/ash

#####################################################################
## Author: 	Calum Hunter
## Date:	14-11-2014
## Version:	0.1
##
## Description:	This is the starting point of our docker container
## 				We are going to ensure our symlink is in place
#####################################################################

# We need to specify the name of our NBI here
nbi="Auto_NBI_14A389_r2.nbi"

#----------------------No need to edit below----------------------------#
# This is our function that performs the work
getting_linked(){

echo "Running our sym link function"

# Lets setup the sym link
echo "Changing into /nbi/$nbi"
cd /nbi/$nbi
echo "Creating our symlink from sparseimage to .dmg"
ln -s NetBoot.reduced.dmg.sparseimage NetBoot.reduced.dmg

# Leave	a calling card to say we've unzipped our NBI
echo "Leaving a	calling	card to	say we are complete"
touch /.setupdone

}

## Script action
# Lets run a check to see if we have run before
# If we haven't then go ahead and run our function
if [ ! -f /.setupdone ] 
	then
		echo "No calling card, lets get zippy"
		getting_linked
	else
		echo "Looks like we have already run this script"
		exit 0
fi

exit 0