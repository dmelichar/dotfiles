# Basics
set -x -g LS_COLORS "di=38;5;27:fi=38;5;7:ln=38;5;51:pi=40;38;5;11:so=38;5;13:or=38;5;197:mi=38;5;161:ex=38;5;9:"
set -x -g TERM "xterm-256color"

# Coreutils bin and man folders
set -x -g PATH (brew --prefix coreutils)/libexec/gnubin $PATH
# set -x -g MANPATH (brew --prefix coreutils)/libexec/gnuman $MANPATH

# Findutils bin and man folders
set -x -g PATH (brew --prefix findutils)/libexec/bin $PATH
# set -x -g MANPATH (brew --prefix findutils)/libexec/gnuman $MANPATH

# NVM 
set -g -x NVM_DIR (brew --prefix nvm)/nvm-exec

# THEME PURE #
set fish_function_path $HOME/.config/fish/functions/pure $fish_function_path

# OpenSSL
set -g -x PATH (brew --prefix openssl)/bin/ $PATH

# Homebrew Analytics
set -g -x HOMEBREW_NO_ANALYTICS 1

# GPG
set -g -x GPG_TTY (tty)