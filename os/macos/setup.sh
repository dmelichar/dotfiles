#!/usr/bin/env bash

DIR=$(dirname "$0")
cd "$DIR"

. ../../scripts/functions.sh

# Ask for the administrator password upfront
sudo -v

# Set defaults
./defaults.sh

# Install xcode if it's not installed
if [[ ! -d "$('xcode-select' -print-path 2>/dev/null)" ]]; then
  sudo xcode-select -switch /usr/bin
fi

# Install Homebrew.
if [[ ! "$(type -P brew)" ]]; then
  info "Installing Homebrew"
  true | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Exit if, for some reason, Homebrew is not installed.
[[ ! "$(type -P brew)" ]] && error "Homebrew failed to install." && return 1

info "Updating Homebrew"
brew doctor
brew update

# Install recipes and casks
./brew.sh
./brew-cask.sh

# Setup Hosts
cd ./hosts
pip3 install -q --user -r requirements.txt
python3 updateHostsFile.py --auto --replace --extensions fakenews gambling

# Security Audit
cd ./osx-config-check/
python app.py --disable-prompt

success "Finished macOs Setup."