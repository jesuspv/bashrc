#!/bin/bash

[[ "$1" =~ ^-(h|-help)$ ]] && { echo "usage: `basename $0` [-g|--git]"; exit 0; }
[[ "$1" =~ ^-(g|-git)$  ]] && { GITCONFIG=1; shift; }
[[ "$1" == ""           ]] || { echo "error: unknown argument $1"; exit 1; }

BASEDIR=$(dirname "`readlink -f ${BASH_SOURCE[0]}`")
FILES="alias bash_profile bashrc"

for FILE in $FILES; do
   [[ -h ~/.$FILE ]] && unlink ~/.$FILE
   [[ -f ~/.$FILE ]] && mv -f ~/.$FILE ~/.$FILE.last \
                     && echo "$FILE backed up as $FILE.last"
   ln -s $BASEDIR/$FILE ~/.$FILE
   echo "$FILE installed"
done

test -n "$GITCONFIG" && ($BASEDIR/gitconfig; echo "gitconfig installed")
