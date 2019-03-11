#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Communication Tools\n\n"

brew_install "Skype" "skype" "caskroom/cask" "cask"
brew_install "Slack" "slack" "caskroom/cask" "cask"
brew_install "Zoom" "zoom" "caskroom/cask" "cask"
brew_install "Blue Jeans" "blue-jeans" "caskroom/cask" "cask"
brew_install "teamviewer" "teamviewer" "caskroom/cask" "cask"
