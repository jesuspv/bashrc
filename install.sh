#!/bin/bash

if [ "$1" == "+g" -o "$1" == "--git" ]; then
   GITCONFIG=1
fi

BASEDIR=$(dirname "`readlink -f $0`")
FILES="alias bash_profile bashrc"

for FILE in $FILES; do
   test -s ~/.$FILE || (ln -s $BASEDIR/$FILE ~/.$FILE; echo "$FILE installed")
done

test -n "$GITCONFIG" && ($BASEDIR/gitconfig; echo "gitconfig installed")
