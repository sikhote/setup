if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
   GIT_PROMPT_THEME=Solarized_Extravagant
   source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

alias gits="git status"
alias gita="git add -A"
alias gitc="git commit -m"
alias gitco="git checkout"
alias gitp="git pull origin"
alias gitpu="git push origin"
alias records="vim ~/Dropbox/documents/Information/Records.txt"
