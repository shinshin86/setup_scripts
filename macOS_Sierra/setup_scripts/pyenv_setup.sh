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
fi\n
' >> ~/.zshrc

echo "************ pyenv setup : Successful! ************"
echo "pyenv install -l "
echo "pyenv install {Python Version}"
echo "pyenv global {Python Version}"
