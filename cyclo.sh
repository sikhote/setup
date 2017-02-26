echo 'base'
chmod +x ./base.sh; ./base.sh

echo 'computer'
sudo scutil --set ComputerName "cyclo"
sudo scutil --set HostName "cyclo"
sudo scutil --set LocalHostName "cyclo"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "cyclo"

echo 'desktop'
yes | cp desktop.jpg ~/Pictures
osascript -e 'tell application "System Events" to set picture of every desktop to ("/Users/cyclo/Pictures/desktop.jpg" as POSIX file as alias)'