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
ZSH_THEME="oxide"
source ~/.oh-my-zsh/oh-my-zsh.sh

eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH=$(brew --prefix)/bin:$PATH

eval "$(fnm env --use-on-cd --shell=zsh)"

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="$HOME/.sdkman"
# [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Python
# export PATH="$PATH:$(brew --prefix python)/libexec/bin"
# export PATH="$PATH:/Users/cyclo/.local/bin"

# bun completions
[ -s "/Users/davidsinclair/.bun/_bun" ] && source "/Users/davidsinclair/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
