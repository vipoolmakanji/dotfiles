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

if [ ! -d "$HOME/.pyenv/versions/3.10.0" ]; then
  execute \
    "pyenv install -v 3.10.0" \
    "Install Python 3.10.0"
fi

execute \
  "pyenv global 3.10.0" \
  "Activate Python 3.10.0"

execute \
  "open -a Terminal -n pip.sh" \
  "Install Pygments"
