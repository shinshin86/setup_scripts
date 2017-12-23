#!/bin/bash

#====================================================================
# zshrc setup
#====================================================================

brew install --without-etcdir zsh

# "/usr/local/bin/zsh" >> /etc/shells
echo "------------------------------------------------"
echo "Please execute command => [sudo vim /etc/shells]"
echo "Add this path [/usr/local/bin/zsh]"
echo "After  => [chsh -s /usr/local/bin/zsh]"
echo "Please terminal reboot!!"
echo ""
echo "And oh_my_zsh setting..."
echo "Let's execute command --------->"
echo "bash ./setup_scripts/oh_my_zsh.sh"
echo "------------------------------------------------"
