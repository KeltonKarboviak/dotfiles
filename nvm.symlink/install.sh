#!/bin/sh
#
# NVM (Node Version Manager)
#
# nvm is first installed by HomeBrew.
# This makes the $NVM_DIR directory if it doesn't exist yet,
# then copies the completion file to this directory.

# Check for nvm installation
if (( ! $+functions[nvm] ))
then
  # Make $NVM_DIR if it doesn't exist yet
  ! [ -d $NVM_DIR ] && mkdir $NVM_DIR

  # Copy the nvm completion file created by HomeBrew to this folder
  completion_path="$(brew --prefix)/etc/bash_completion.d/nvm"

  [ -s $completion_path ] && cp $completion_path ./completion.zsh

  # Install latest LTS version
  nvm install --lts

  nvm alias default $(nvm current)

  [ -f default-packages.json ] && npm install -y -g default-packages.json

  tldr --update
fi

exit 0
