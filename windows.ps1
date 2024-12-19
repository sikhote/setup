Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
scoop install git

scoop bucket add extras
scoop install extras/fancontrol
scoop install extras/vlc
scoop install extras/firefox
scoop install extras/hwmonitor

scoop bucket add games
scoop install games/steam
scoop install games/epic-games-launcher
scoop install games/battlenet

scoop bucket add main
scoop install main/7zip

scoop bucket add nonportable
scoop install nonportable/dropbox-np
