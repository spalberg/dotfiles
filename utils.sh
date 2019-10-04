#!/bin/bash

function clone_pull {
  DIRECTORY="$2"        
  if [ -d "$DIRECTORY" ]; then
    cd "$DIRECTORY"
    git pull
    cd ../
  else
    git clone "$1" "$2"
  fi
}
