#!/bin/bash

#====================================================================
# wget Setting
#====================================================================
echo "wget setting : start..."

cd ~
brew install wget
### wget path >> ~/.zshrc
export PATH=/usr/local/Cellar/wget/*/bin:$PATH >> ~/.zshrc

echo "wget setting : successful!"
