echo 'brew'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git yarn awscli dark-mode zsh
brew cask install dropbox
brew cask install firefox
brew cask install google-chrome
brew cask install steam
brew cask install the-unarchiver
brew cask install vlc
brew cask install spectacle
brew cask install transmission
brew cask install vscodium
brew cask install now
brew cask install iterm2
brew cask install postman

echo "projects"
mkdir -p ~/Projects

echo 'zsh'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
