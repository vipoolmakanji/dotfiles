#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

brew_install "Zsh" "zsh"
brew_install "Zsh Completions" "zsh-completions"
brew_install "Zsh Syntax Highlighting" "zsh-syntax-highlighting"
brew_install "Zsh Auto Suggestions" "zsh-autosuggestions"
