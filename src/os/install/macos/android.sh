#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Android Dev Tools\n\n"

brew_install "Apktool" "apktool"
brew_install "OpenJDK Java" "adoptopenjdk" "--cask" "" "async-install"
brew_install "Android Platform Tools" "android-platform-tools" "--cask" "" "async-install"
brew_install "Android File Transfer" "android-file-transfer" "--cask" "" "async-install"
brew_install "Android Studio" "android-studio" "--cask" "" "async-install"
