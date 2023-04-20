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

eval "$(fnm env --use-on-cd --shell=zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Added by install-mac-toolchain.sh
. ~/code/developer-setup/mac/.reirc
