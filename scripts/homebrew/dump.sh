#!/bin/bash

brew update
brew upgrade 
brew upgrade --cask
brew cleanup

brew bundle dump --file=/Users/glqzp/scripts/homebrew/Brewfile --force

#restore
# brew bundle --file=~/scripts/homebrew/Brewfile

cd ~
# Check for git changes
if [[ $(git status --porcelain) ]]; then
  # Add all changes
  git add -A

  # Commit changes
  git commit -m "Auto commit changes"

  # Push changes
  git push
fi