#!/bin/bash

#====================================================================
# Setup script
#====================================================================

set -e

bash ./setup_scripts/brew_setup.sh
bash ./setup_scripts/zsh_setup.sh
source ~/.zshrc

echo "please reboot!"
echo "do you reboot?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) exit;;
        No ) echo "OK! Not reboot!"; break;;
    esac
done

bash ./setup_scripts/oh_my_zsh.sh
bash ./setup_scripts/zaw_setup.sh
bash ./setup_scripts/wget_setup.sh
bash ./setup_scripts/rbenv_setup.sh
bash ./setup_scripts/pyenv_setup.sh
bash ./setup_scripts/nvm_setup.sh
bash ./setup_scripts/nvm_setup.sh
bash ./setup_scripts/tree_setup.sh
bash ./setup_scripts/less_color.sh
bash ./setup_scripts/golang_setup.sh
bash ./setup_scripts/opencv_setup.sh

source ~/.zshrc
