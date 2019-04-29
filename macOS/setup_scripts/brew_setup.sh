#!/bin/bash

#====================================================================
# brew &zshrc setup
#====================================================================

# requirement: xcode
xcode-select --install

# brew install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "export PATH=/usr/local/Homebrew/bin:\$PATH" >> ~/.bashrc

echo "********** brew setup : Successful! **********"
