#!/bin/bash

#====================================================================
# Ruby Setting
#====================================================================

echo "rbenv setting : start..."

cd
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc

### After task ###

echo "******* rbenv setup : Successful! *********"
echo "rbenv install --list"
echo "rbenv install {Ruby version}"
echo "rbenv rehash"
echo "rbenv global {Ruby version}"

