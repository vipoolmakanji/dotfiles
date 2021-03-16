#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Database\n\n"

brew_install "PgAdmin4" "pgadmin4" "--cask" "" "async-install"
brew_install "Sequel Pro" "sequel-pro" "--cask" "" "async-install"
brew_install "MySql Workbench" "mysqlworkbench" "--cask" "" "async-install"

#TODO - Need to install MYSQL database, and any others as well
