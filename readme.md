# setup
Install as much as possible through cli

### mac
```
git
mkdir ~/Projects; cd ~/Projects
git clone https://github.com/sikhote/setup.git
cd setup
```

### ubuntu (outdated)
```
sudo apt-get update
sudo apt-get upgrade -d
sudo apt-get -y install git
mkdir ~/Projects; cd ~/Projects
git clone https://github.com/sikhote/setup.git
cd setup
```

## post install
- add ssh key and change permissions: `chmod 400 ~/.ssh/id_rsa`
- change password: `dscl . -passwd /Users/user`
- remove anything in `remove` folder
