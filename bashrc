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
# Variables
#######################################

export TERM=xterm-256color
export PS1="\e[1m\!\e[0m \@\n\e[32;1m\u\e[37m@\e[33m\h\e[37m:\e[36m\W\e[37m $\e[0m "

export HISTCONTROL=ignoreboth:erasedups

export SCREENDIR=$HOME/.screen

#######################################
# Additional Config
#######################################

test -s ~/.alias && . ~/.alias

test -s ~/.bashrc.$USER && . ~/.bashrc.$USER
