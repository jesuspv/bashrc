#######################################
# Config
#######################################

# tab completion with sudo
complete -cf sudo

# see http://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html
shopt -s autocd
shopt -s cdspell
shopt -s cdable_vars
shopt -s dirspell
shopt -s extglob
shopt -s globstar

#######################################
# Alias
#######################################

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

#######################################
# Variables
#######################################

export TERM=xterm-256color
export PS1="\e[1m\!\e[0m \@\n\e[32;1m\u\e[37m@\e[33m\h\e[37m:\e[36m\W\e[37m $\e[0m "
