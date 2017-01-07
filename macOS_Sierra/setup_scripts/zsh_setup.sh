#!/bin/bash

#====================================================================
# zshrc setup
#====================================================================

brew install --without-etcdir zsh

# "/usr/local/bin/zsh" >> /etc/shells
echo "Please execute command => [sudo vim /etc/shells]"
echo "Add this path [/usr/local/bin/zsh]"
echo "After  => [chsh -s /usr/local/bin/zsh]"
echo "Please terminal reboot!!"
