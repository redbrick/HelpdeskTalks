#! /bin/bash
if [ -z "$1" ]
  then
    WORK=Downloads/college
  else
    WORK=$1
fi
echo "Do you want to backup ~/$WORK directory? (yes/no)"
read n
if [ $n = yes -o $n = y ] ; then
  if [ ! -d ~/backups ] ; then
    mkdir ~/backups
  fi
  DEST=~/backups
  NAME=work-$(date +%d%-m%-y%).tar.gz
  tar -zcvf $DEST/$NAME ~/$WORK
fi
