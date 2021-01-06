# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
function update
    brew update
    brew upgrade
    brew upgrade --cask
    brew cleanup
    npm update -g
end
