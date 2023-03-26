# .dotfiles

## Git clone

With ssh key:
```
git clone --bare git@github.com:blntrsz/.dotfiles.git ~/.dotfiles
```
Without ssh key:
```
git clone --bare https://github.com/blntrsz/.dotfiles.git ~/.dotfiles
```

## Setup

```
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
```
cd ~ && dot checkout
```
```
dot config --local status.showUntrackedFiles no
```

## Ansible Setup

```
ansible-playbook ~/.config/ansible/local.yml --ask-become-pass
```
