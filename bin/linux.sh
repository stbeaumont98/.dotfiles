#!/bin/bash

# Store the output of the 'uname' command in the variable OS
OS=`uname`
LINUX="Linux"

# Check if OS isn't Linux
if [ $OS != $LINUX ]
then
	# Log message
	echo "Wrong OS!" >> linuxsetup.log
	# Quit
	exit
fi

# Create the .TRASH directory if it doesn't already exist
mkdir -p ~/.TRASH

# Check if .vimrc exists in the home directory
if [ -d "~/.vimrc" ]
then
	# Rename .vimrc to .bup_vimrc
	mv ~/.vimrc ~/.bup_vimrc
	# Log message
	echo "Current .vimrc changed to .bup_vimrc" >> linuxsetup.log
fi

# Redirect content of etc/vimrc to ~/.vimrc
cat ~/.dotfiles/etc/vimrc > ~/.vimrc

# Add a statement to the end of .bashrc in the home directory
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
