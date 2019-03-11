#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   System Utils\n\n"

brew_install "Iterm2 Terminal" "iterm2" "caskroom/cask" "cask"
brew_install "Magicprefs" "magicprefs" "caskroom/cask" "cask"
brew_install "Hyperdock" "hyperdock" "caskroom/cask" "cask"

brew_install "Ansible" "ansible"
brew_install "Python" "python"
brew_install "AWScli" "awscli"
brew_install "Bat" "bat"
brew_install "Htop" "htop"
brew_install "Magic Wormhole" "magic-wormhole"
brew_install "Ncdu" "ncdu"
brew_install "Nmap" "nmap"
brew_install "Pretty ping" "prettyping"
brew_install "Telnet" "telnet"
brew_install "Testssl" "testssl"
brew_install "Tree" "tree"
brew_install "Wget" "wget"
