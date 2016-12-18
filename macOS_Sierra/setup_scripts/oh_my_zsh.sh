#!/bin/bash

#====================================================================
# zshrc setup
#====================================================================

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "export PATH=/usr/local/bin:$PATH" >> ~/.zhsrc
echo 'ZSH_THEME="mh"' >> ~/.zhsrc
echo "export PATH=/usr/local/Homebrew/bin:$PATH" >> ~/.zhsrc
echo "fpath=(/usr/local/share/zsh-completions $fpath)" >> ~/.zhsrc
echo "plugins=(git ruby osx bundler brew rails emoji-clock)" >> ~/.zhsrc
echo 'PROMPT="%K{17}%~ : $%K"' >> ~/.zhsrc
