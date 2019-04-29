#!/bin/bash

#====================================================================
# Node Setting
#====================================================================

echo "nvm setting : start..."
brew install gnu-sed
git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`

echo 'source ~/.nvm/nvm.sh' >> ~/.zshrc

echo "********** nvm setup : Successful! **********"
echo "nvm ls-remote"
echo "nvm install {Node.js Version}"
