# Readme

This repo contains the setup for my home directory. I manage this using the [`dgit`](https://www.electricmonk.nl/log/2015/06/22/keep-your-home-dir-in-git-with-a-detached-working-directory/) alias.

## Setup

### DGit

When setting this up on a new computer, create thre required directories:

```shell
mkdir ~/.dotfiles/
```

Clone the repo:

```shell
git clone https://github.com/dylanratcliffe/home.git ./.dotfiles
```

Create the dgit alias initially and checkout the code:

```shell
alias dgit='git --git-dir ~/.dotfiles/.git --work-tree=$HOME'
dgit reset HEAD --hard
```

### Shell Setup

Install all of the dependencies:

```shell
brew install go rbenv pyenv zsh tpm jq wget 
brew install --cask font-meslo-for-powerlevel10k
```

Install oh-my-zsh:

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Set up the following settings in iTerm2:

* Use built-in Powerline glyphys
* Set colour for light & dark mode (Solarized)
* Set the font to MesloLGS NF

Install Tmux plugins by starting a session then pressing CMD+a then SHIFT+i
