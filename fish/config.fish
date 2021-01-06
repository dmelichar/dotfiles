# Basics
set -x -g LS_COLORS "di=38;5;27:fi=38;5;7:ln=38;5;51:pi=40;38;5;11:so=38;5;13:or=38;5;197:mi=38;5;161:ex=38;5;9:"
set -x -g TERM "xterm-256color"
set -x -g EDITOR "vim"

# Coreutils bin and man folders
set PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
# set -x -g MANPATH (brew --prefix coreutils)/libexec/gnuman $MANPATH

# Findutils bin and man folders
set PATH /usr/local/opt/coreutils/libexec/bin $PATH
# set -x -g MANPATH (brew --prefix findutils)/libexec/gnuman $MANPATH

# NVM
set -g -x NVM_DIR /usr/local/opt/nvm

# THEME PURE #
set fish_function_path $HOME/.config/fish/functions/pure $fish_function_path

# OpenSSL
set PATH /usr/local/opt/openssl/bin/ $PATH
set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_paths
set -gx LDFLAGS "-L/usr/local/opt/openssl/lib"
set -gx CPPFLAGS "-I/usr/local/opt/openssl/include"
set -gx PKG_CONFIG_PATH "/usr/local/opt/openssl/lib/pkgconfig"

# Homebrew Analytics
set -g -x HOMEBREW_NO_ANALYTICS 1
# GPG
set -g -x GPG_TTY (tty)

# Go
set -g -x GOPATH /Users/dmelichar/go/bin
set PATH /Users/dmelichar/go/bin $PATH


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /usr/local/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

