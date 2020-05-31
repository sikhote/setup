echo 'base'
chmod +x ./base.sh; ./base.sh

echo 'computer'
sudo scutil --set ComputerName "$USER"
sudo scutil --set HostName "$USER"
sudo scutil --set LocalHostName "$USER"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$USER"

echo 'git'
git config --global user.email "carlyhater@gmail.com"
