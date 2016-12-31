#!/bin/bash

#====================================================================
# Vim Setting
#====================================================================

echo "vim setting : start..."

brew install lua
brew install vim --with-lua
export PATH=/usr/local/Cellar/vim/*/bin:$PATH >> ~/.zshrc

# .vimrc setup
curl https://raw.githubusercontent.com/shinshin86/dotfiles/master/.vimrc > ~/.vimrc

mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/ftplugin
mkdir -p ~/.vim/dicts

# vimbackup setup
mkdir ~/vimbackup

# NeoBundle setup
# https://github.com/Shougo/neobundle.vim
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
rm -rf install.sh

# Hybrid vim setup
# https://github.com/w0ng/vim-hybrid
curl  https://raw.githubusercontent.com/w0ng/vim-hybrid/master/colors/hybrid.vim > ~/.vim/colors/hybrid.vim

source ~/.vimrc

### After task ###

echo "******* Vim setup : Successful! *********"
echo "Let's launch Vim and 'NeoBundleInstall'! "
