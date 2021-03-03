#!/usr/bin/env bash

function rdd() {
  rm -rf ~/Library/Developer/Xcode/DerivedData/* && echo "Successfully flushed DerivedData"

  read -p "Restart XCode safely? [y/n] - " ans

  if [[ $ans == [yY] ]]; then
    osascript -e 'quit app "Xcode"'
    osascript -e "tell application \"XCode\" to activate"
  fi
}
