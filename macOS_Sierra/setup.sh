#!/bin/bash

#====================================================================
# Setup script
#====================================================================

set -e

bash ./setup_scripts/brew_setup.sh
source ~/.zshrc

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
source ~/.zshrc

bash ./setup_scripts/zaw_setup.sh
source ~/.zshrc

bash ./setup_scripts/rbenv_setup.sh
source ~/.zshrc

bash ./setup_scripts/pyenv_setup.sh
source ~/.zshrc

bash ./setup_scripts/nvm_setup.sh
source ~/.zshrc

bash ./setup_scripts/nvm_setup.sh
source ~/.zshrc