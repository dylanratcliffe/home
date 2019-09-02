# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/dylan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Start ssh-agent
if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi

# Alias dgit for git in the home directory
alias dgit='git --git-dir ~/.dotfiles/.git --work-tree=$HOME'

# Variables
export TERM="xterm-256color"

# Call rbenv
eval "$(rbenv init -)"


