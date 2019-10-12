#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Communication Tools\n\n"

brew_install "Skype" "skype" "" "cask"
brew_install "Slack" "slack" "" "cask"
brew_install "Zoom" "zoom" "" "cask"
brew_install "Blue Jeans" "blue-jeans" "" "cask"
brew_install "teamviewer" "teamviewer" "" "cask"
