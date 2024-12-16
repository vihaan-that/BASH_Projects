#!/bin/bash

# Author : Vihaan Thatiparthi
# Date Created : 2024-12-16
# Last Modified : 2024-12-16
# Usage : memoryLog.sh
# Details : Logs the memory usage inside a file at  $HOME/performance/memory.Log


if [ -d $HOME/performance] ; then
  echo "$HOME/performance folder exists"
else
  mkdir $HOME/performance
  echo "$HOME/performance folder has been created"
fi
free >> $HOME/performance/memory.log

