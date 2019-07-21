echo 'zsh'
yes | cp .zshrc ~/.zshrc
yes | cp oxide.zsh-theme ~/.oh-my-zsh/custom/themes/oxide.zsh-theme

echo 'nvm & npm'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
source ~/.zshrc
nvm install 10
nvm alias default 10

echo 'dark mode'
dark-mode on

echo 'scroll direction'
defaults write com.apple.swipescrolldirection -bool NO

echo 'dock'
defaults write com.apple.Dock autohide-delay -float 0
defaults write com.apple.Dock autohide -bool true
defaults write com.apple.dock 'orientation' -string 'bottom'
defaults write com.apple.dock launchanim -bool false
defaults write com.apple.dock tilesize -integer 40
defaults write com.apple.dock persistent-apps -array

echo 'recent apps in dock'
defaults write com.apple.dock show-recents -bool FALSE

echo 'password policies'
pwpolicy -clearaccountpolicies

echo 'finder preferences'
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy name" ~/Library/Preferences/com.apple.finder.plist
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
echo 'column view'
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRecentTags -int 0
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder WarnOnEmptyTrash -boolean false
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES

echo 'other preferences'
defaults write NSGlobalDomain AppleWindowTabbingMode -string 'always'
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true
defaults -currentHost write com.apple.screensaver idleTime -int 0
defaults write CGDisableCursorLocationMagnification -bool YES
defaults write com.apple.BezelServices kDim -bool false
defaults write com.apple.CrashReporter DialogType -string "none"
defaults write com.apple.LaunchServices LSQuarantine -bool false
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.iokit.AmbientLightSensor "Automatic Display Enabled" -int 0
defaults write com.apple.iokit.AmbientLightSensor "Automatic Keyboard Enabled" -int 0
defaults write com.apple.screencapture location ~/Screenshots
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 1800
defaults write com.apple.screensaver idleTime -int 0
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

echo 'reset for settings'
killall Finder
killall Dock

echo 'sleep'
sudo pmset -a sleep 0
sudo pmset -a displaysleep 10
sudo pmset -a disksleep 60
sudo pmset -a autorestart 1
sudo pmset -a acwake 1
sudo pmset -a lessbright 0
sudo pmset -a halfdim 0

echo 'apps from anywhere'
sudo spctl --master-disable

echo 'library'
chflags nohidden ~/Library

echo 'screenshots'
mkdir -p ~/Screenshots

echo 'git'
git config --global user.name "David Sinclair"
git config --global user.email "david@sinclair.tech"

echo 'fonts'
yes | cp fonts/* ~/Library/Fonts

echo 'vscode'
code --install-extension naumovs.color-highlight
code --install-extension EditorConfig.EditorConfig
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension blanu.vscode-styled-jsx
code --install-extension samverschueren.linter-xo
code --install-extension eamodio.gitlens
mkdir -p ~/Library/Application\ Support/Code/User/snippets/
yes | cp vscode/snippets/* ~/Library/Application\ Support/Code/User/snippets/
yes | cp vscode/settings.json ~/Library/Application\ Support/Code/User/

echo 'desktop'
yes | cp desktop.jpg ~/Pictures
osascript -e 'tell application "System Events" to set picture of every desktop to ("/Users/$USER/Pictures/desktop.jpg" as POSIX file as alias)'