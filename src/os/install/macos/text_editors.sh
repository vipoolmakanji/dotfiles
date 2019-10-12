#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Text Editors\n\n"

brew_install "Atom" "atom" "" "cask"
brew_install "Adobe Acrobat Reader" "adobe-acrobat-reader" "" "cask"
brew_install "Phpstorm" "phpstorm" "" "cask"
brew_install "Sublime Text Editor" "sublime-text" "" "cask"
