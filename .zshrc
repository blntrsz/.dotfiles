export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git vi-mode)
source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='lvim'
fi


# Load aliasses
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"


## Keybindings
bindkey -s ^f "tmux-sessionizer\n"
bindkey ^R history-incremental-search-backward
