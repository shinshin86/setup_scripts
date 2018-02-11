#!/bin/bash
set -Cu

#====================================================================
# Setup script
#====================================================================

brew -v &> /dev/null
if [ $? -eq 0 ] ; then
  echo "---> It is already installed : brew"
else
  bash ./setup_scripts/brew_setup.sh
fi

zsh --version &> /dev/null
if [ $? -eq 0 ] ; then
  echo "---> It is already installed : zsh"
else
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
fi


#bash ./setup_scripts/oh_my_zsh.sh
if [ -e ~/.zsh/zaw ]; then
  echo "---> It is already installed : zaw"
else
  bash ./setup_scripts/zaw_setup.sh
fi

wget --version &> /dev/null
if [ $? -eq 0 ] ; then
  echo "---> It is already installed : wget"
else
  bash ./setup_scripts/wget_setup.sh
fi

rbenv --version &> /dev/null
if [ $? -eq 0 ] ; then
  echo "---> It is already installed : rbenv"
else
  bash ./setup_scripts/rbenv_setup.sh
fi

pyenv --version &> /dev/null
if [ $? -eq 0 ] ; then
  echo "---> It is already installed : pyenv"
else
  bash ./setup_scripts/pyenv_setup.sh
fi

nvm --version &> /dev/null
if [ $? -eq 0 ] ; then
  echo "---> It is already installed : nvm"
else
  bash ./setup_scripts/nvm_setup.sh
fi

tree --version &> /dev/null
if [ $? -eq 0 ] ; then
  echo "---> It is already installed : tree"
else
  bash ./setup_scripts/tree_setup.sh
fi

if [ $LESS = "-R" ] ; then
  echo "---> It is already installed : less_color"
else
  bash ./setup_scripts/less_color.sh
fi

go version &> /dev/null
if [ $? -eq 0 ] ; then
  echo "---> It is already installed : golang"
else
  bash ./setup_scripts/golang_setup.sh
fi

brew list opencv &> /dev/null
if [ $? -eq 0 ] ; then
  echo "---> It is already installed : opencv"
else
  bash ./setup_scripts/opencv_setup.sh
fi

# NeoVim
pip3 --version &> /dev/null
if [ $? -eq 0 ] ; then
  nvim --version &> /dev/null
  if [ $? -eq 0 ] ; then
    echo "---> It is already installed : nvim"
  else
    bash ./setup_scripts/neo_vim_setup.sh
  fi
else
  echo "---> Let's setup pip3(Python3)"
fi

# peco
peco --version &> /dev/null
if [ $? -eq 0 ] ; then
  echo "---> It is already installed : peco"
else
  bash ./setup_scripts/peco_setup.sh
fi

# mac update all command
alias mac_update &> /dev/null
if [ $? -eq 0 ] ; then
  echo "---> It is already setup : mac_update command"
else
  echo "alias mac_update='sudo softwareupdate --install --all'" >> ~/.zshrc
fi

source ~/.zshrc
