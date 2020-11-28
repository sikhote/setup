# Git
alias gits="git status"
alias gita="git add -A"
alias gitc="git commit -m"
alias gitsac="git status && git add -A && git commit -m"
alias gitco="git checkout"
alias gitp="git pull origin"
alias gitpu="git push origin"

# Android
# export ANT_HOME=/usr/local/opt/ant
# export MAVEN_HOME=/usr/local/opt/maven
# export GRADLE_HOME=/usr/local/opt/gradle
# export ANDROID_HOME=/usr/local/share/android-sdk
# export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
# export ANDROID_NDK_HOME=/usr/local/share/android-ndk
# export INTEL_HAXM_HOME=/usr/local/Caskroom/intel-haxm
# export PATH=$ANT_HOME/bin:$PATH
# export PATH=$MAVEN_HOME/bin:$PATH
# export PATH=$GRADLE_HOME/bin:$PATH
# export PATH=$ANDROID_HOME/tools:$PATH
# export PATH=$ANDROID_HOME/platform-tools:$PATH
# export PATH=$ANDROID_HOME/build-tools/23.0.1:$PATH

# Zsh options
ZSH_DISABLE_COMPFIX=true
DISABLE_AUTO_UPDATE=true

# Zsh theme
# mac: export ZSH="/Users/$USER/.oh-my-zsh"
# ubuntu: export ZSH="/home/$USER/.oh-my-zsh"
ZSH_THEME="oxide"
source $ZSH/oh-my-zsh.sh

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
