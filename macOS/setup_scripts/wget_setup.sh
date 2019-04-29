#!/bin/bash

#====================================================================
# wget Setting
#====================================================================
echo "wget setting : start..."

cd ~
brew install wget
echo "# setup wget" >> ~/.zshrc
echo "export PATH=/usr/local/Cellar/wget/*/bin:\$PATH" >> ~/.zshrc

echo "wget setting : successful!"
