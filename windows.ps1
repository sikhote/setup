# Windows install
# - Shift F10 once installer gets passed first reboot
# - type "oobe\bypassnro"
#
# Windows activate
# - https://github.com/massgravel/Microsoft-Activation-Scripts

# Scoop
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
scoop install git
scoop bucket add extras
scoop install extras/fancontrol
scoop install extras/vlc
scoop install extras/firefox
scoop install extras/chromium
scoop install extras/hwmonitor
scoop install extras/vscodium
scoop bucket add games
scoop install games/steam
scoop install games/epic-games-launcher
scoop install games/battlenet
scoop bucket add main
scoop install main/7zip
scoop install main/plex-server
scoop bucket add nonportable
scoop install nonportable/dropbox-np
