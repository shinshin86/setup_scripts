#!/bin/bash

#====================================================================
# Vim Setting
#====================================================================

echo "vim setting : start..."

cd ~
brew install wget
### wget path >> ~/.zshrc
export PATH=/usr/local/Cellar/wget/*/bin:$PATH >> ~/.zshrc

brew install lua
brew install vim --with-lua
export PATH=/usr/local/Cellar/vim/*/bin:$PATH >> ~/.zshrc

wget https://raw.githubusercontent.com/shinshin86/dotfiles/master/.vimrc

mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/ftplugin
mkdir -p ~/.vim/dicts
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
wget https://raw.githubusercontent.com/w0ng/vim-hybrid/master/colors/hybrid.vim ~/.vim/colors/hybrid.vim

### After task ###

echo "******* Vim setup : Successful! *********"
echo "Let's launch Vim and 'NeoBundleInstall'! "
