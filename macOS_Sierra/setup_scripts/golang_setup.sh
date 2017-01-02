#!/bin/bash

#====================================================================
# golang setup
#====================================================================

brew install go

mkdir ~/gocode
echo "export GOPATH=$HOME/gocode" >> ~/.zshrc