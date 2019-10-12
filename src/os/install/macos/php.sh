#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Communication Tools\n\n"

#brew "httpd", restart_service: true
brew "php", restart_service: true


brew_install "composer" "composer"
