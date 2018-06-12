echo 'base'
chmod +x ./base.sh; ./base.sh

echo 'desktop'
yes | cp desktop.jpg ~/Pictures
osascript -e 'tell application "System Events" to set picture of every desktop to ("/Users/dsinclair/Pictures/desktop.jpg" as POSIX file as alias)'

echo 'git'
git config --global user.email "dsinclair@guildmortgage.net"
