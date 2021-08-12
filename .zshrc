# Git
alias gits="git status"
alias gita="git add -A"
alias gitc="git commit -m"
alias gitsac="git status && git add -A && git commit -m"
alias gitco="git checkout"
alias gitp="git pull origin"
alias gitpu="git push origin"

# Zsh options
ZSH_DISABLE_COMPFIX=true
DISABLE_AUTO_UPDATE=true

# Zsh theme
# mac: export ZSH="/Users/$USER/.oh-my-zsh"
# ubuntu: export ZSH="/home/$USER/.oh-my-zsh"
ZSH_THEME="oxide"
source ~/.oh-my-zsh/oh-my-zsh.sh

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
