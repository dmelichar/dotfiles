#!/usr/bin/env bash

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/Library/Application\ Support/Code/User)"

. ../scripts/functions.sh

# Ask for the administrator password upfront
sudo -v

info "Setting up Visual Studio Code..."

substep_info "Creating Visual Studio Code folders..."
mkdir -p "$DESTINATION"

find * -not -name "setup.sh" -type f | while read fn; do
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

code --install-extension aaron-bond.better-comments
code --install-extension azemoh.one-monokai
code --install-extension donjayamanne.githistory
code --install-extension dracula-theme.theme-dracula
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension James-Yu.latex-workshop
code --install-extension ms-toolsai.jupyter
code --install-extension naumovs.color-highlight
code --install-extension PKief.material-icon-theme
code --install-extension skyapps.fish-vscode
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension streetsidesoftware.code-spell-checker-german
code --install-extension torn4dom4n.latex-support
code --install-extension waderyan.gitblame
code --install-extension yzhang.markdown-all-in-one
