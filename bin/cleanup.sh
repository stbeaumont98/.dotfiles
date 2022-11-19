#!/bin/bash

# Remove .vimrc from the home directory
rm -f ~/.vimrc

# Remove the statement at the end of .bashrc in the home directory
sed -i "\|source ~/.dotfiles/etc/bashrc_custom|d" ~/.bashrc

# Remove the .TRASH directory in the home directory
rm -rf ~/.TRASH
