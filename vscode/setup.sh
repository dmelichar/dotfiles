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

code --install-extension PKief.material-icon-theme
code --install-extension azemoh.one-monokai
code --install-extension lei.theme-chromodynamics
code --install-extension ms-python.python
code --install-extension ms-vscode.cpptools
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension christian-kohler.path-intellisense
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension ikuyadeu.r
code --install-extension aaron-bond.better-comments
code --install-extension formulahendry.docker-explorer
code --install-extension henriiik.docker-linter
code --install-extension ms-vscode.csharp
code --install-extension austin.code-gnu-global
code --install-extension james-yu.latex-workshop
code --install-extension yzhang.markdown-all-in-one
