#!/bin/bash
L=$(uname)
# Check the operating system type is 'Linux'.'linuxsetup.log' file and run the exit
if [[ $L != "Linux" ]]; then

        echo "error:this is not a linux device." >> linuxsetup.log
        exit
else

#make TRASH' directory in your home directory if it doesn't exit already
        mkdir -p ~/".TRASH"

#f the '.vimrc'files exits in your home directory, change its name to ' .bup vimrc'
        if [[ -f ~/.vimrc ]]; then
                mv ~/.vimrc ~/.bup_vimrc
                echo "the current .vimrc file was change to'.bup_vimrc'">> linuxsetup.log
        fi

#Redirect (overwrite) the contents of the etc/vimrc file to a file called '.vimrc'
        cat ~/.dotfiles/etc/.vimrc > ~/.vimrc

#Add the statement 'source ~/.dotfiles/etc/bashrc_custom' to the end of the . bashrc
        echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
fi

