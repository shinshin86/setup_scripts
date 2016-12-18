#!/bin/bash

#====================================================================
# zshrc setup
#====================================================================

brew install --without-etcdir zsh

"/usr/local/bin/zsh" >> /etc/shells

chsh -s /usr/local/bin/zsh
echo "********** zsh setup : Successful!! *********"
echo "Please, terminal reboot!!"
