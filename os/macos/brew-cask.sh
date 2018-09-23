#!/usr/bin/env bash

DIR=$(dirname "$0")
cd "$DIR"

. ../../scripts/functions.sh

info "Intalling brew casks..."

# brew install caskroom/cask/brew-cask
# brew tap caskroom/cask
# brew tap caskroom/versions
# brew tap caskroom/drivers
# brew tap caskroom/fonts

brew cask install spectacle
brew cask install iterm2
brew cask install alfred
brew cask install citrix-receiver
brew cask install disk-inventory-x
brew cask install docker
brew cask install dropbox
brew cask install adobe-acrobat-reader
brew cask install firefox
brew cask install flux
brew cask install google-chrome
brew cask install google-drive-file-stream
brew cask install intellij-idea
brew cask install pycharm
brew cask install microsoft-office
brew cask install skype-for-business
brew cask install spotify
brew cask install slack
brew cask install steam
brew cask install teamviewer
brew cask install telegram
brew cask install visual-studio-code
brew cask install vlc
brew cask install whatsapp
brew cask install xquartz
brew cask install java
brew cask install java8
brew cask install appcleaner
brew cask install thunderbird
brew cask install santa
brew cask install keybase