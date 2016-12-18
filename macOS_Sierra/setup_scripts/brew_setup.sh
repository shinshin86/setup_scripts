#!/bin/bash

#====================================================================
# brew &zshrc setup
#====================================================================

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
'export PATH=/usr/local/Homebrew/bin:$PATH' >> ~./bashrc

echo "********** brew setup : Successful! **********"