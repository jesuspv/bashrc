#!/bin/bash

BASEDIR="`readlink -f $0`"
FILES="alias bash_profile bashrc"

for FILE in $FILES; do
   test -s ~/.$FILE || (ln -s $BASEDIR/$FILE ~/.$FILE; echo "$FILE installed")
done
