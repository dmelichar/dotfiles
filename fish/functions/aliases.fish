# Utilities
function g        ; git $argv ; end
function grep     ; command grep --color=auto $argv ; end

# mv, rm, cp
alias mv 'command gmv --interactive --verbose'
alias rm 'command grm --interactive --verbose'
alias cp 'command gcp --interactive --verbose'

alias hosts='sudo $EDITOR /etc/hosts'   # yes I occasionally 127.0.0.1 twitter.com ;)

# Networking. IP address, dig, DNS
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias dig="dig +nocmd any +multiline +noall +answer"

