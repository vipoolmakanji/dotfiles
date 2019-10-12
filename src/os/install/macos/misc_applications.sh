#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous\n\n"

brew_install "Cyberduck" "cyberduck" "" "cask"
brew_install "Daisydisk" "daisydisk" "" "cask"
brew_install "Docker" "docker" "" "cask"
brew_install "Dropbox" "dropbox" "" "cask"
brew_install "iStat Menus" "istat-menus" "" "cask"
brew_install "Intel Power Gadget" "intel-power-gadget" "" "cask"
#brew_install "Filezilla" "filezilla" "" "cask"
brew_install "Postman" "postman" "" "cask"
brew_install "Purevpn" "purevpn" "" "cask"
brew_install "Unarchiver" "the-unarchiver" "" "cask"
brew_install "VLC" "vlc" "" "cask"
brew_install "Wireshark" "wireshark" "" "cask"
