#!/bin/bash

#====================================================================
# golang setup
#====================================================================

brew install go
brew install qt5 pkg-config
brew link --force qt5

mkdir ~/gocode
echo "export GOPATH=\$HOME/go" >> ~/.zshrc
echo "# setup golang" >> ~/.zshrc
echo "export PATH=/usr/local/Cellar/go/*/bin:\$PATH" >> ~/.zshrc
echo "export PATH=$PATH:$GOPATH/bin" >> ~/.zshrc
echo "# gore alias" >> ~/.zshrc
echo "alias gore-i='gore -autoimport'" >> ~/.zshrc

