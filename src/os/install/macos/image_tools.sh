#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Image Tools\n\n"

brew_install "GIMP" "lisanet-gimp" "" "cask" "" "async-install"
brew_install "ImageAlpha" "imagealpha" "" "cask" "" "async-install"
brew_install "ImageMagick" "imagemagick --with-webp" "" "async-install"
brew_install "ImageOptim" "imageoptim" "" "cask" "" "async-install"
brew_install "LICEcap" "licecap" "" "cask" "" "async-install"
