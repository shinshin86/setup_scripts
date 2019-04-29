# fzfをインストール
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
source ~/.zshrc

# setup .zshrc
echo '[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh' >> ~/.zshrc
echo 'export FZF_DEFAULT_COMMAND='"'"'rg --files --hidden --glob "!.git"'"'" >> ~/.zshrc
echo 'export FZF_DEFAULT_OPTS='"'"'--height 40% --reverse --border'"'" >> ~/.zshrc

