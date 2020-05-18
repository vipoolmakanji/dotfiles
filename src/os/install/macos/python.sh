#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Python Latest\n\n"

# https://realpython.com/intro-to-pyenv/#installing-pyenv

execute \
  "curl https://pyenv.run | bash" \
  "Install PyEnv"

execute \
  "pyenv install -v 3.7.2 && pyenv global 3.7.2" \
  "Install Python 3.7.2"
