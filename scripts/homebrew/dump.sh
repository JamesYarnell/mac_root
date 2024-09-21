#!/bin/bash

brew update

brew bundle dump --file=~/scripts/homebrew/Brewfile --force

#restore
# brew bundle --file=~/scripts/homebrew/Brewfile

# Check for git changes
if [[ $(git status --porcelain) ]]; then
  # Add all changes
  git add .

  # Commit changes
  git commit -m "Auto commit changes"

  # Push changes
  git push
fi