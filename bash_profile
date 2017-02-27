if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
   GIT_PROMPT_THEME=Solarized_Extravagant
   source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

alias px="export http_proxy=http://www-west.sony.com:80; export https_proxy=http://www-west.sony.com:80; export HTTP_PROXY=http://www-west.sony.com:80; export HTTPS_PROXY=http://www-west.sony.com:80; npm config set proxy=http://www-west.sony.com:80; npm config set https-proxy=http://www-west.sony.com:80"
alias upx="unset http_proxy; unset https_proxy; unset HTTP_PROXY; unset HTTPS_PROXY; npm config delete proxy; npm config delete https-proxy"
alias gitsony="git config --global user.email david.sinclair@sony.com"
alias gitme="git config --global user.email david@sikhote.com"
alias gits="git status"
alias gita="git add -A"
alias gitc="git commit -m"
