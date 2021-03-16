#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous\n\n"

brew_install "Authy Authenticator" "authy" "--cask" "" "async-install"
brew_install "Cyberduck" "cyberduck" "--cask" "" "async-install"
brew_install "Caffeine" "caffeine" "--cask" "" "async-install"
brew_install "Daisydisk" "daisydisk" "--cask" "" "async-install"
brew_install "Docker" "docker" "--cask" "" "async-install"
brew_install "Dropbox" "dropbox" "--cask" "" "async-install"
brew_install "iStat Menus" "istat-menus" "cask"
brew_install "Intel Power Gadget" "intel-power-gadget" "cask"
#brew_install "Filezilla" "filezilla" "" "cask"
brew_install "Postman" "postman" "--cask" "" "async-install"
brew_install "Purevpn" "purevpn" "--cask" "" "async-install"
brew_install "Telegram" "telegram" "--cask" "" "async-install"
brew_install "Unarchiver" "the-unarchiver" "--cask" "" "async-install"
brew_install "VLC" "vlc" "--cask" "" "async-install"
brew_install "Wireshark" "wireshark" "--cask" "" "async-install"
