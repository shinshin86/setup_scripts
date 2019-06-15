#!/bin/bash

#====================================================================
# Node Setting
#====================================================================

echo "nvm setting : start..."
brew install gnu-sed
git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`

echo '# setup nvm' >> ~/.zshrc
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"' >> ~/.zshrc

echo "********** nvm setup : Successful! **********"
echo "nvm ls-remote"
echo "nvm install {Node.js Version}"
