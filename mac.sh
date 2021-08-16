echo 'zsh'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo 'zsh'
yes | cp .zshrc ~/.zshrc
yes | cp oxide.zsh-theme ~/.oh-my-zsh/custom/themes/oxide.zsh-theme

echo 'brew'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git firefox dropbox google-chrome the-unarchiver vlc spectacle postman vscodium
brew install --cask transmission

echo 'nvm & npm'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
source ~/.zshrc
nvm install 14
nvm alias default 14
npm install -g yarn
npm install -g vercel

echo 'screenshots'
mkdir -p ~/Screenshots

echo 'git'
git config --global user.name "David Sinclair"
git config --global user.email "david@sinclair.tech"
git config pull.rebase false

echo 'vscode'
codium --install-extension anseki.vscode-color
codium --install-extension EditorConfig.EditorConfig
codium --install-extension dbaeumer.vscode-eslint
codium --install-extension esbenp.prettier-vscode
codium --install-extension eamodio.gitlens
mkdir -p ~/Library/Application\ Support/VSCodium/User/snippets/
yes | cp vscode/snippets/* ~/Library/Application\ Support/VSCodium/User/snippets/
yes | cp vscode/settings.json ~/Library/Application\ Support/VSCodium/User/

echo 'scroll direction'
defaults write -g com.apple.swipescrolldirection -bool NO

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

# echo 'sdkman'
# curl -s "https://get.sdkman.io" | bash
# source "$HOME/.sdkman/bin/sdkman-init.sh"
# sdk install java 8.0.222.hs-adpt

# echo 'android'
# brew install ant
# brew install maven
# brew install gradle
# brew cask install android-sdk
# brew cask install android-ndk
# yes | sudo sdkmanager --licenses

echo 'desktop'
yes | cp desktop.jpg ~/Pictures
yes | cp desktop2.jpg ~/Pictures
part1='tell application "System Events" to set picture of every desktop to ("/Users/'
part2='/Pictures/desktop.jpg" as POSIX file as alias)'
osascript -e "$part1$USER$part2"

echo 'computer'
sudo scutil --set ComputerName "$USER"
sudo scutil --set HostName "$USER"
sudo scutil --set LocalHostName "$USER"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$USER"
