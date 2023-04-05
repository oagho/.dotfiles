# My Dotfiles
These are my dotfile configuration files for different software in Bash.
anyone that uses this dot file must have a linux system
## .vimrc
This is my custom .vimrc configuration for Vim.
This vimrc file contains configuration option for vim editor
## .bashrc
This is my custom .bashrc configuration for Bash.
contain bash script shell cutom configuration
## Makefile
The Makefile provides two targets for running the linux.sh and cleanup.sh scripts. The linux target runs the linux.sh script and has a dependency on the clean target, which runs the cleanup.sh script.

To run the setup script, simply execute the following command in the root directory of the repository:
##bin/cleanup.sh
The cleanup.sh script undoes the changes made by the linux.sh script. These include:

·       Removing the .vimrc file and restoring any backed-up version.

·       Removing the source ~/.dotfiles/etc/bashrc.custom statement from the user's .bashrc file.

·       Removing the .TRASH directory.

The script logs its output to a file called linuxcleanup.log in the user's home directory.


