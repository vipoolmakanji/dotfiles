#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Text Editors\n\n"

brew_install "Atom" "atom" "" "cask" "" "async-install"
brew_install "Adobe Acrobat Reader" "adobe-acrobat-reader" "" "cask" "" "async-install"
brew_install "Phpstorm" "phpstorm" "" "cask" "" "async-install"
brew_install "Sublime Text Editor" "sublime-text" "" "cask" "" "async-install"
