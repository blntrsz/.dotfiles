# .dotfiles

## Setup

```
git clone --bare git@github.com:blntrsz/.dotfiles.git ~/.dotfiles
```
```
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
```
cd ~ && dot checkout
```
```
dot config --local status.showUntrackedFiles no
```
