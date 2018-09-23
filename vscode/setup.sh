#!/usr/bin/env bash

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

info "Intalling visual code extensions..."

# Ask for the administrator password upfront
sudo -v

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
