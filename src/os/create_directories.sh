#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

create_directories() {

    declare -a DIRECTORIES=(
        "$HOME/.dotvm"
        "$HOME/Certs"
        "$HOME/projects"
        "$HOME/projects/dazn"
        "$HOME/projects/pzero"
        "$HOME/projects/app-support"
        "$HOME/projects/personal"
        "$HOME/Sites"
        "$HOME/public_html"
        "$HOME/public"
    )

    for i in "${DIRECTORIES[@]}"; do
        mkd "$i"
    done

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
    print_in_purple "\n • Create directories\n\n"
    create_directories
}

main
