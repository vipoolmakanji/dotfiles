#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_npm_package() {

    execute \
        ". $HOME/.bash.local \
            && npm install --global --silent $2" \
        "$1"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   npm\n\n"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    install_npm_package "npm (update)" "npm"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    printf "\n"

    install_npm_package "!nstant-markdown-d" "instant-markdown-d"

    # change permissions on node_modules dir
    # sudo chmod 777 /usr/local/lib/node_modules
}

main
