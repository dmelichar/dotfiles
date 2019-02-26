# Basics
set -x -g LS_COLORS "di=38;5;27:fi=38;5;7:ln=38;5;51:pi=40;38;5;11:so=38;5;13:or=38;5;197:mi=38;5;161:ex=38;5;9:"
set -x -g TERM "xterm-256color"

# Coreutils bin and man folders
set -x -g PATH (brew --prefix coreutils)/libexec/gnubin $PATH
# set -x -g MANPATH (brew --prefix coreutils)/libexec/gnuman $MANPATH

# Findutils bin and man folders
set -x -g PATH (brew --prefix findutils)/libexec/bin $PATH
# set -x -g MANPATH (brew --prefix findutils)/libexec/gnuman $MANPATH

# ruby gem 
set -x -g PATH /Users/dmelichar/.gem/ruby/2.3.0/bin $PATH

# NVM
set -g -x NVM_DIR (brew --prefix nvm)/nvm-exec

# THEME PURE #
set fish_function_path $HOME/.config/fish/functions/pure $fish_function_path

# OpenSSL
set -g -x PATH (brew --prefix openssl)/bin/ $PATH
set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_paths
set -gx LDFLAGS "-L/usr/local/opt/openssl/lib"
set -gx CPPFLAGS "-I/usr/local/opt/openssl/include"
set -gx PKG_CONFIG_PATH "/usr/local/opt/openssl/lib/pkgconfig"

# Homebrew Analytics
set -g -x HOMEBREW_NO_ANALYTICS 1

# GPG
set -g -x GPG_TTY (tty)

