# aws cloud9 setup

## ssh
```
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub
```

## nvm, node, yarn, prettier (for editor)
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
nvm install 14
nvm alias default 14
npm install --global yarn
npm install --global prettier
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
- replace at `.zshrc`
```
export ZSH="/home/ubuntu/.oh-my-zsh"

ZSH_DISABLE_COMPFIX="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_UPDATE="true"

export ZSH="/home/$USER/.oh-my-zsh"
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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
```
- append to `.bashrc`
```
zsh
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