# setup
Install as much as possible through cli

## install
```
mkdir ~/Projects
cd ~/Projects
git clone https://github.com/sikhote/setup-mac.git
cd setup-mac

chmod +x ./start.sh; ./start.sh

// choose one!
chmod +x ./default.sh; ./default.sh
chmod +x ./biggo.sh; ./biggo.sh
chmod +x ./carly.sh; ./carly.sh
```

## post install
- add ssh key and change permissions: `chmod 400 ~/.ssh/id_rsa`
- change password: `dscl . -passwd /Users/user`
- configure: dropbox, firefox, transmission, iterm
