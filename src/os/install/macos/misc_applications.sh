#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous\n\n"

brew_install "Cyberduck" "cyberduck" "caskroom/cask" "cask"
brew_install "Daisydisk" "daisydisk" "caskroom/cask" "cask"
brew_install "Docker" "docker" "caskroom/cask" "cask"
brew_install "Dropbox" "dropbox" "caskroom/cask" "cask"
brew_install "iStat Menus" "istat-menus" "caskroom/cask" "cask"
brew_install "Intel Power Gadget" "intel-power-gadget" "caskroom/cask" "cask"
#brew_install "Filezilla" "filezilla" "caskroom/cask" "cask"
brew_install "Postman" "postman" "caskroom/cask" "cask"
brew_install "Purevpn" "purevpn" "caskroom/cask" "cask"
brew_install "Unarchiver" "the-unarchiver" "caskroom/cask" "cask"
brew_install "VLC" "vlc" "caskroom/cask" "cask"
brew_install "Wireshark" "wireshark" "caskroom/cask" "cask"
