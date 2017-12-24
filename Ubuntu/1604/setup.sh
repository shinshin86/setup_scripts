# setup for Ubuntu 16.04 LTS


#====================================================================
# Basic setting
#====================================================================
cd ~

sudo apt-get update -y && sudo apt-get upgrade -y &&

env LANGUAGE=C LC_MESSAGES=C xdg-user-dirs-gtk-update

sudo apt-get install -y vim curl git python-software-properties build-essential libssl-dev  bison openssl libreadline6 libreadline6-dev git-core zlib1g zlib1g-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev && sudo apt-get install -y zsh && curl -L http://install.ohmyz.sh | sh

#====================================================================
# gnome-tweak-tool Setting
#====================================================================
cd ~
gnome-tweak-tool --help &> /dev/null
if [ -e ~/.rbenv ]; then
  echo "--->It is already install : gnome-tweak-tool"
else
  sudo apt-get install -y gnome-tweak-tool
fi

#====================================================================
# Ruby Setting
#====================================================================
cd ~

if [ -e ~/.rbenv ]; then
  echo "--->It is already install : rbenv"
else
  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
  echo 'eval "$(rbenv init -)"' >> ~/.zshrc

  ### After task ###
  # rbenv install --list
  # rbenv install "Ruby version"
  # rbenv rehash
  # rbenv global "Ruby version"
fi

#====================================================================
# Python Setting
#====================================================================
cd ~

if [ -e ~/.pyenv ]; then
  echo "--->It is already install : pyenv"
else
  git clone git://github.com/yyuu/pyenv.git ~/.pyenv
  git clone https://github.com/yyuu/pyenv-pip-rehash.git ~/.pyenv/plugins/pyenv-pip-rehash

  printf '#----- pyenv\n
  export PYENV_ROOT="${HOME}/.pyenv"\n
  if [ -d "${PYENV_ROOT}" ]; then\n
  export PATH=${PYENV_ROOT}/bin:$PATH\n
  eval "$(pyenv init -)"\n
  fi\n
  ' >> ~/.zshrc

  # pyenv install -l
  # pyenv install "Python Version"
  # pyenv global "Python Version"
fi

#====================================================================
# Node Setting
#====================================================================
if [ -e ~/.nvm ]; then
  echo "--->It is already intall : nvm"
else
  git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
  echo 'source ~/.nvm/nvm.sh' >> ~/.zshrc

  # nvm install "Node.js Version"
fi

#====================================================================
# Java8 Setting
#====================================================================
java -version &> /dev/null
if [ $? -eq 0 ] ; then
  echo "--->It is already install : java"
else
  sudo add-apt-repository ppa:webupd8team/java && sudo apt-get install -y oracle-java8-installer && sudo apt-get -y install oracle-java8-set-default
fi

#====================================================================
# Postgrec Setting
#====================================================================
psql --version &> /dev/null
if [ $? -eq 0 ] ; then
  echo "--->It is already install : postgres"
else
  sudo apt-get install -y postgresql libpq-dev

  # sudo -u postgres psql
  # password postgres
  # q
fi

#====================================================================
# Mysql Setting
#====================================================================
mysql --version &> /dev/null
if [ $? -eq 0 ] ; then
  echo "--->It is already install : postgres"
else
  sudo apt-get -y install mysql-server

  # cd /etc/mysql
  # cp my.cnf my.cnf.org
  # sudo vi my.cnf
  # Add this
  # ----------------------
  # [client]
  # default-character-set = utf8
  # [mysqld]
  # skip-character-set-client-handshake
  # character-set-server  = utf8
  # collation-server      = utf8_general_ci
  # init-connect          = SET NAMES utf8
  # ----------------------
  # Reboot
  # sudo service mysql restart
  # Login
  # mysql -u root -p

  echo "After command to MySQL(handmade) !!"

fi

#====================================================================
# zsh & oh-my-zsh Setting
#====================================================================
zsh --version &> /dev/null
if [ $? -eq 0 ] ; then
  echo "---> It is already installed : zsh"
else
  chsh -s $(which zsh) && cat .oh-my-zsh/templates/zshrc.zsh-template >> .zshrc
fi

#====================================================================
# tree install
#====================================================================
tree --version &> /dev/null
if [ $? -eq 0 ] ; then
  echo "---> It is already installed : tree"
else
  sudo apt-get install -y tree
fi

#====================================================================
# tree install
#====================================================================
if [ $LESS = "-R" ] ; then
  echo "---> It is already installed : less color"
else
  sudo apt-get install -y source-highlight
  echo 'export LESS="-R"' >> .zshrc
  echo 'export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"' >> .zshrc
fi

#====================================================================
# Vim Setting
#====================================================================
vim-gnome --version &> /dev/null
if [ $? -eq 0 ] ; then
  echo "---> It is already installed : vim"
else
  # Install for activation for lua
  sudo apt-get install -y vim-gnome
  curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh && sh ./install.sh
fi

#====================================================================
# MongoDB Setting
#====================================================================
mongo --version &> /dev/null
if [ $? -eq 0 ] ; then
  echo "---> It is already installed : mongo"
else
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
  echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
  sudo apt-get update
  sudo apt-get install -y mongodb-org
  sudo service mongod restart
fi


#====================================================================
# Chromium Install
#====================================================================
chromium-browser --version &> /dev/null
if [ $? -eq 0 ] ; then
  echo "---> It is already installed : Chromium"
else
  sudo apt-get install -y chromium-browser
fi

#====================================================================
# openssh-server Install
#====================================================================
ssh -V &> /dev/null
if [ $? -eq 0 ] ; then
  echo "---> It is already installed : openssh-server"
else
  sudo apt-get install -y openssh-server
fi

#====================================================================
# Golang Install
#====================================================================
go version &> /dev/null
if [ $? -eq 0 ] ; then
  echo "---> It is already installed : Golang"
else
  sudo add-apt-repository ppa:longsleep/golang-backports
  sudo apt-get update
  sudo apt-get install -y golang-go
fi

#====================================================================
# Atom Install
#====================================================================
cd ~
atom --version &> /dev/null
if [ $? -eq 0 ] ; then
  echo "---> It is already installed : Atom"
else
  sudo add-apt-repository ppa:webupd8team/atom
  sudo apt-get update
  sudo apt-get install -y atom

  wget https://raw.githubusercontent.com/shinshin86/dotfiles/master/apm_package_list.txt
  mv apm_package_list.txt ~/.atom/my-packages.txt
  apm install --packages-file ~/.atom/my-packages.txt
fi

#====================================================================
# Visual Studio Code Install
#====================================================================
code --version &> /dev/null
if [ $? -eq 0 ] ; then
  echo "---> It is already installed : Visual Studio Code"
else
  curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
  sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
  sudo sh -c 'echo "deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
  sudo apt-get update
  sudo apt-get install -y code
fi

