#!/usr/bin/env bash

DIR=$(dirname "$0")
cd "$DIR"

. ../../scripts/functions.sh

info "Intalling brew casks..."

# brew install caskroom/cask/brew-cask
# brew tap caskroom/cask
# brew tap caskroom/versions
# brew tap caskroom/drivers

# fonts
brew tap caskroom/fonts
brew cask install font-awesome

# essential
brew cask install spectacle
brew cask install iterm2
brew cask install alfred
brew cask install thunderbird
brew cask install flux

# file storage
brew cask install dropbox
brew cask install google-drive-file-stream

# browsers
brew cask install firefox
brew cask install google-chrome

# authentication and security
brew cask install keybase
brew cask isntall keepassxc
brew cask install santa


# communication
brew cask install slack
brew cask install skype-for-business
brew cask install telegram
brew cask install whatsapp

# other
brew cask install microsoft-office
brew cask install spotify
brew cask install steam

# utils
brew cask install citrix-receiver
brew cask install disk-inventory-x
brew cask install adobe-acrobat-reader
brew cask install vlc
brew cask install xquartz
brew cask install appcleaner
brew cask install teamviewer

# virtualisiation
brew cask install virtualbox
brew cask install vagrant
brew cask install docker

# IDEs and editors
brew cask install java8
brew cask isntall pycharm
brew cask install intellij-idea
brew cask install visual-studio-code
brew cask install rstudio
