#!/bin/bash

#====================================================================
# zshrc setup
#====================================================================

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "export PATH=/usr/local/bin:$PATH" >> ~/.zshrc
echo 'ZSH_THEME="mh"' >> ~/.zshrc
echo "export PATH=/usr/local/Homebrew/bin:$PATH" >> ~/.zshrc
echo "fpath=(/usr/local/share/zsh-completions $fpath)" >> ~/.zshrc
echo "plugins=(git ruby osx bundler brew rails emoji-clock)" >> ~/.zshrc
echo 'PROMPT="%K{17}%~ : $%K"' >> ~/.zshrc
