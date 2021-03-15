# setup
Install as much as possible through cli

## install
Download the project and then run `mac.sh` or `ubuntu.sh` line by line

### ubuntu
```
sudo apt-get update
sudo apt-get upgrade -d
sudo apt-get -y install git
```

### mac
```
git
```

### mac & ubuntu
```
mkdir ~/Projects
cd ~/Projects
git clone https://github.com/sikhote/setup.git
cd setup
```

## post install
- add ssh key and change permissions: `chmod 400 ~/.ssh/id_rsa`
- change password: `dscl . -passwd /Users/user`

## aws cloud9 setup
- copy ssh key `ssh-keygen -t rsa` and `cat ~/.ssh/id_rsa.pub`
- node `nvm install 14; nvm alias default 14`
- install yarn `npm install --global yarn`
- change prettier to be default formatter
- font size
- elastic ip
- git
```
git config --global user.name "David Sinclair"
git config --global user.email "david@sinclair.tech"
git config pull.rebase false
```