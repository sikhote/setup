echo 'base'
chmod +x ./base.sh; ./base.sh

echo 'computer'
sudo scutil --set ComputerName "nodessertro"
sudo scutil --set HostName "nodessertro"
sudo scutil --set LocalHostName "nodessertro"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "nodessertro"

echo 'desktop'
yes | cp desktop.jpg ~/Pictures
osascript -e 'tell application "System Events" to set picture of every desktop to ("/Users/nodessertro/Pictures/desktop.jpg" as POSIX file as alias)'