# aws cloud9 setup

## ssh
```
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub
```

## zsh and ohmyzsh
- install
```
sudo apt-get update
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mkdir -p ~/.oh-my-zsh/custom/themes
yes | cp oxide.zsh-theme ~/.oh-my-zsh/custom/themes/oxide.zsh-theme
```
- append to `.bashrc`
```
zsh
```
- replace at `.zshrc`
```
export ZSH="/home/$USER/.oh-my-zsh"

ZSH_DISABLE_COMPFIX="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_UPDATE="true"

ZSH_THEME="oxide"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

alias gits="git status"
alias gita="git add -A"
alias gitc="git commit -m"
alias gitsac="git status && git add -A && git commit -m"
alias gitco="git checkout"
alias gitp="git pull origin"
alias gitpu="git push origin"
```

## nvm, node, yarn, prettier (for editor)
```
nvm install 14
nvm alias default 14
install yarn `npm install --global yarn
install yarn `npm install --global prettier
```

## git
```
git config --global user.name "David Sinclair"
git config --global user.email "david@sinclair.tech"
git config pull.rebase false
```

## random
- change prettier to be default formatter
- font size
- elastic ip