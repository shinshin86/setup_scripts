#!/bin/bash

#====================================================================
# golang setup
#====================================================================

brew install go

mkdir ~/gocode
echo "export GOPATH=\$HOME/gocode" >> ~/.zshrc
echo "# setup golang" >> ~/.zshrc
echo "export PATH=/usr/local/Cellar/go/*/bin:\$PATH" >> ~/.zshrc
