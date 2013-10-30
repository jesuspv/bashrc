# tab completion with sudo
complete -cf sudo

# see http://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html
shopt -s autocd
shopt -s cdspell
shopt -s cdable_vars
shopt -s dirspell
shopt -s extglob
shopt -s globstar

# get rid of command not found #
alias cd..='cd ..'
alias cd-='cd -'

# a quick way to get out of current directory #
alias    ..='cd ../..'
alias   ...='cd ../../..'
alias  ....='cd ../../../..'
alias .....='cd ../../../..'
alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

alias l1='ls -1 --color=tty'
alias ll='ls -l --color=tty'
alias l.='ls -a --color=tty'
