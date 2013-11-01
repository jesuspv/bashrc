#######################################
# Config
#######################################

# global config
test -s /etc/bashrc && . /etc/bashrc

# tab completion with sudo
complete -cf sudo

if [ "${BASH_VERSION%%.*}" -ge 4 ]; then
   # see http://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html
   shopt -s autocd
   shopt -s cdspell
   shopt -s cdable_vars
   shopt -s dirspell
   shopt -s extglob
   shopt -s globstar
fi

#######################################
# Variables
#######################################

export TERM=xterm-256color
export PS1="\e[1m\!\e[0m \@\n\e[32;1m\u\e[37m@\e[33m\h\e[37m:\e[36m\W\e[37m $\e[0m "

export HISTCONTROL=ignoreboth:erasedups

export SCREENDIR=$HOME/.screen

#######################################
# Post Config
#######################################

# aliases
test -s ~/.alias && . ~/.alias

# user defined
test -s ~/.bashrc.$USER && . ~/.bashrc.$USER
