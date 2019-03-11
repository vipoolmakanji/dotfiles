#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Database\n\n"

brew_install "PgAdmin4" "pgadmin4" "caskroom/cask" "cask"
brew_install "Sequel Pro" "sequel-pro" "caskroom/cask" "cask"

#TODO - Need to install MYSQL database, and any others as well
