!/bin/bash

brew update

brew bundle dump --file=~/scripts/homebrew/Brewfile --force

#restore
# brew bundle --file=~/scripts/homebrew/Brewfile