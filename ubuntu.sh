echo 'zsh'
sudo apt install -y zsh
chsh -s /usr/bin/zsh
yes | cp .zshrc ~/.zshrc
mkdir -p ~/.oh-my-zsh/custom/themes
yes | cp oxide.zsh-theme ~/.oh-my-zsh/custom/themes/oxide.zsh-theme

echo 'screenshots'
mkdir -p ~/Screenshots

echo 'git'
git config --global user.name "David Sinclair"
git config --global user.email "david@sinclair.tech"

echo 'curl'
sudo apt install -y curl

echo 'dropbox'
curl -o dropbox.deb -L https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2018.11.28_amd64.deb
sudo dpkg -i ./dropbox.deb
sudo apt -f install
rm -rf dropbox.deb

echo 'transmission'
sudo apt-get install transmission -y

echo 'steam'
curl -o steam.deb -L https://steamcdn-a.akamaihd.net/client/installer/steam.deb
sudo dpkg -i ./steam.deb
sudo apt -f install
rm -rf steam.deb

echo 'snap'
sudo apt update
sudo apt install snapd

echo 'snap apps'
sudo snap install vlc
sudo snap install postman
sudo snap install paintsupreme-3d
sudo snap install atom --classic
sudo snap install chromium

echo 'nvm & npm'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
source ~/.zshrc
nvm install 14
nvm alias default 14
npm install expo-cli --global

echo 'yarn'
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install --no-install-recommends yarn

echo 'bash-git-prompt'
cd ~/
git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1

echo 'bash'
cat ~/Downloads/setup-ubuntu-master/bash >> ~/.bashrc
yes | cp ~/Downloads/setup-ubuntu-master/Solarized_Extravagant.bgptheme ~/.bash-git-prompt/themes/Solarized_Extravagant.bgptheme
source ~/.bashrc

echo 'desktop'
cd ~/Downloads/setup-master/
yes | cp desktop.jpg ~/Pictures

echo 'preferences'
gsettings set org.gnome.desktop.session idle-delay 0
gsettings set org.gnome.desktop.screensaver lock-enabled false

echo 'atom'
apm install --packages-file atom.txt
