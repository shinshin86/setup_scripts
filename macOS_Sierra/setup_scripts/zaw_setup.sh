#!/bin/bash

#====================================================================
# zaw setup
#====================================================================
cd
git clone git://github.com/zsh-users/zaw.git ~/.zsh

echo "# zaw.zsh" >> .zshrc
echo "# http://shibayu36.hatenablog.com/entry/20120130/1327937835" >> .zshrc
echo "autoload -Uz chpwd_recent_dirs cdr add-zsh-hook" >> .zshrc
echo "add-zsh-hook chpwd chpwd_recent_dirs" >> .zshrc
echo "zstyle ':chpwd:*' recent-dirs-max 5000" >> .zshrc
echo "zstyle ':chpwd:*' recent-dirs-default yes" >> .zshrc
echo "zstyle ':completion:*' recent-dirs-insert both" >> .zshrc
echo "source ~/.zsh/zaw.zsh" >> .zshrc
echo "zstyle ':filter-select' case-insensitive yes # 絞り込みをcase-insensitiveに" >> .zshrc
echo "bindkey '^@' zaw-cdr # zaw-cdrをbindkey" >> .zshrc
