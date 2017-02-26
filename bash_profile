if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
   GIT_PROMPT_THEME=Solarized_Extravagant
   source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
