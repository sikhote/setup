# Windows install
# - Select English (world) for currency
# - Windows 11 Pro, for study, join domain, just local

# Windows activate
# - https://github.com/massgravel/Microsoft-Activation-Scripts

# Scoop
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
scoop install git
scoop bucket add extras
scoop install rustdesk
scoop install extras/fancontrol
scoop install extras/vlc
scoop install extras/chromium
scoop install extras/hwmonitor
scoop install extras/vscodium
scoop install extras/qbittorrent
scoop bucket add games
scoop install games/steam
scoop bucket add main
scoop install main/nanazip
scoop install main/plex-server
scoop bucket add nonportable
scoop install nonportable/dropbox-np

# Scoop run as admin
scoop install games/epic-games-launcher
scoop install games/battlenet
