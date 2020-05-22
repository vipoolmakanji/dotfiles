#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Python Latest\n\n"

# https://realpython.com/intro-to-pyenv/#installing-pyenv

execute \
  "brew install pyenv pyenv-virtualenv" \
  "Install PyEnv"

if [ ! -d "$HOME/.pyenv/versions/3.7.2" ]; then
  execute \
    "pyenv install -v 3.7.2" \
    "Install Python 3.7.2"
fi

execute \
  "pyenv global 3.7.2" \
  "Activate Python 3.7.2"

execute \
  "open -a Terminal -n pip.sh" \
  "Install Pygments"
