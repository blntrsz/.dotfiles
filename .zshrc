# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git vi-mode)
source $ZSH/oh-my-zsh.sh

# keys
bindkey ^R history-incremental-search-backward
bindkey -s ^F "~/.config/tmux/tmux-sessionizer\n"

# aliases
alias up="ansible-playbook ~/.config/ansible/local.yml --ask-become-pass";
alias gs="git status"
alias v="vim"
alias vim="nvim"
alias dot="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias ds="dot status"

# fnm
export PATH="/home/blntrsz/.local/share/fnm:$PATH"
eval "`fnm env`"
