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
brew cask install flux
brew cask install signal
brew cask install raindropio

# file storage
brew cask install google-drive-file-stream

# browsers
brew cask install firefox
brew cask install chromium

# authentication and security
brew cask install santa
brew cask install blockblock


# utils
brew cask install spotify
brew cask install disk-inventory-x
brew cask install vlc
brew cask install xquartz
brew cask install appcleaner
brew cask install teamviewer
brew cask install iglance
brew cask install gpg-suite

# virtualisiation
brew cask install virtualbox
brew cask install vagrant
brew cask install docker
brew cask install miniconda


# IDEs and editors
brew cask install visual-studio-code
