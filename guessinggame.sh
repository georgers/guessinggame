#/usr/bin/env bash
# File: guessinggame.sh
# Author: georgers

function chkentry {      #check if guess is an integer
	echo "Enter a positive integer and press Enter"
        read entry  #get user input before entering loop
	while  ! [[ $entry  =~ ^[0-9]+$ ]] #until they enter an integer
        do
	        echo "Sorry!  That's not an integer! Try again!"
		echo "Enter a positive integer and press Enter"
		read entry   #get user input during while loop
	done
	guess=$entry
}

#***************** begin main section of script ***********************************

numfiles=$(ls -al | grep ^-.*$ | wc -l)  #determine number of  files in directory
echo "Care to guess how many files in this directory?"
guess=0  #initialize guess variable just in case

while [ "$guess" -ne "$numfiles" ]
do
	chkentry  #function to make sure guess is an integer

	if [ "$guess" -lt "$numfiles" ]
		then echo "Sorry there are more files than that!  Try again!"
	elif [ "$guess" -gt "$numfiles" ]
		then echo "Sorry! There aren't that many files!  Try again!"
	else
		if [ "$guess" -eq "$numfiles" ]
			then
				echo "Congratulations that's exactly right!"
				echo "There are $numfiles files in this directory!"
		fi
	fi
done

