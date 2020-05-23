#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Communication Tools\n\n"

brew_install "Skype" "skype" "" "cask" "" "async-install"
brew_install "Slack" "slack" "" "cask" "" "async-install"
brew_install "Zoom" "zoom" "" "cask" "" "async-install"
brew_install "Blue Jeans" "blue-jeans" "" "cask" "" "async-install"
brew_install "teamviewer" "teamviewer" "" "cask" "" "async-install"
