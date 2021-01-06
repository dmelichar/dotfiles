#!/usr/bin/env bash

DIR=$(dirname "$0")
cd "$DIR"

. ../../scripts/functions.sh

info "Intalling brew recipes..."

# GNU core utilities (those that come with OS X are outdated)
brew install coreutils
brew install moreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --with-default-names

# Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
brew install bash-completion
brew install homebrew/completions/brew-cask-completion

# Install wget with IRI support
brew install wget --with-iri

# Install more recent versions of some OS X tools
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen

# Install other useful binaries
brew install git
brew install tree
brew install ffmpeg --with-libvpx
brew install ssh-copy-id
brew install brew-cask-completion
brew install telnet
brew install openssl
brew install gpg2
brew install gpg-agent
brew install openvpn

# Dev binaries
brew install gcc
brew install fish
brew install gradle
brew install maven
brew install nvm
brew install python3
brew install pyenv
brew install go
brew install jq
brew install doxygen
brew install helm
brew install ansible

# Remove outdated versions from the cellar
brew cleanup

success "Done installing brew recipes..."
