#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   GNU Tools\n\n"

brew_install "GNU Core Utils" "coreutils"
brew_install "Binutils" "binutils"
brew_install "Curl" "curl"
brew_install "Diffutils" "diffutils"
brew_install "Ed" "ed"
brew_install "Findutils" "findutils"
brew_install "Gawk" "gawk"
brew_install "Gnu Indent" "gnu-indent"
brew_install "Gnu Sed" "gnu-sed"
brew_install "Gnu Tar" "gnu-tar"
brew_install "Gnu Which" "gnu-which"
brew_install "Gnu Tls" "gnutls"
brew_install "Grep" "grep"
brew_install "Gzip" "gzip"
brew_install "Screen" "screen"
brew_install "Watch" "watch"
brew_install "Wdiff" "wdiff"
brew_install "Wget" "wget"

brew_install "Nano" "nano"
