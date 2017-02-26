#!/bin/bash

#====================================================================
# golang setup
#====================================================================

brew install go
brew install qt5 pkg-config
brew link --force qt5

mkdir ~/gocode
echo "export GOPATH=\$HOME/gocode" >> ~/.zshrc
echo "# setup golang" >> ~/.zshrc
echo "export PATH=/usr/local/Cellar/go/*/bin:\$PATH" >> ~/.zshrc
