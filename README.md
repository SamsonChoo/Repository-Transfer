# Repository-Transfer
Written to transfer a repository into a new one (for whatever reason)

This is a shell script I wrote for my Introduction to Computer Networks class in NCTU. As the TA will be deleting our lab repository, we were adviced to save the repositories before they are deleted. This shell file will automate the process of:
 * Creating the new repositories on Github
 * Cloning the old repositories
 * Uploading the old repositories to the new repositories
 * Clean up on the local computer (delete all cloned repositories locally)
 
## Environment
This was written and tested on Ubuntu, but should also work on the windows terminal.
This script assumes you have git and curl installed.

## How to Use
```git clone https://github.com/SamsonChoo/Repository-Transfer```  
```cd Repository-Transfer```  
```sh gitoperations.sh <GITHUB_USERNAME>```  
Follow the instructions on the screen. You would need to first enter your github password (to create the repository on Github), then your username and password again (to upload the local repository)
