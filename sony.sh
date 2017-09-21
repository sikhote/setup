echo 'base'
chmod +x ./base.sh; ./base.sh

echo 'computer'
sudo scutil --set ComputerName "david"
sudo scutil --set HostName "david"
sudo scutil --set LocalHostName "david"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "david"

echo 'desktop'
yes | cp desktop.jpg ~/Pictures
osascript -e 'tell application "System Events" to set picture of every desktop to ("/Users/david/Pictures/desktop.jpg" as POSIX file as alias)'
