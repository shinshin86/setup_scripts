#!/bin/bash

#====================================================================
# Python Setting
#====================================================================

echo "pyenv setting : start..."

cd
git clone git://github.com/yyuu/pyenv.git ~/.pyenv
git clone https://github.com/yyuu/pyenv-pip-rehash.git ~/.pyenv/plugins/pyenv-pip-rehash

printf '#----- pyenv\n
export PYENV_ROOT="${HOME}/.pyenv"\n
if [ -d "${PYENV_ROOT}" ]; then\n
export PATH=${PYENV_ROOT}/bin:$PATH\n
eval "$(pyenv init -)"\n
eval "$(pyenv virtualenv-init -)"\n
fi\n
' >> ~/.zshrc

echo "************ pyenv setup : Successful! ************"
echo "pyenv install -l "
echo "pyenv install {Python Version}"
echo "pyenv global {Python2 Version} {Python3 Version}"
echo "Example => pyenv global 2.7.13 3.5.2 "
echo ""
echo "TODO ===> validation this... : "
echo "And install pyenv-virutalenv ==> brew install pyenv-virtualenv"
