#!/bin/bash

#====================================================================
# tree setup
#====================================================================

brew install tree
echo "# setup tree" >> ~/.zshrc
echo "export PATH=/usr/local/Cellar/tree/*/bin:\$PATH" >> ~/.zshrc
echo "********** tree setup : Successful! **********"
