#!/bin/bash

DEPENDENCIES="dependencies.txt"
ROOT_UID=0    # Only users with $UID 0 have root privileges
E_NOTROOT=87  # Non-root exit error

if [ "$UID" -ne "$ROOT_UID" ]
then
  echo "Must be root to run this script."
  exit $E_NOTROOT
fi

echo "Updating the sources list"
sudo apt update

for dep in $(cat $DEPENDENCIES); do
  echo "Installing dependency $dep"
  #sudo apt install $dep
done


