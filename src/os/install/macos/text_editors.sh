#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Text Editors\n\n"

brew_install "Atom" "atom" "caskroom/cask" "cask"
brew_install "Adobe Acrobat Reader" "adobe-acrobat-reader" "caskroom/cask" "cask"
brew_install "Phpstorm" "phpstorm" "caskroom/cask" "cask"
brew_install "Sublime Text Editor" "sublime-text" "caskroom/cask" "cask"
