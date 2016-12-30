#!/bin/bash

#====================================================================
# less color setup
#====================================================================

brew install source-highlight
echo "export LESS='-R'" >> ~/.zshrc
echo "export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'" >> ~/.zshrc
source ~/.zshrc
echo "less color setup: Successful!!"
