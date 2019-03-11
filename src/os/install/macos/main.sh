#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

./xcode.sh
./homebrew.sh
#./bash.sh
./../nvm.sh
./git.sh

./browsers.sh
./communication.sh
./compression_tools.sh

./gpg.sh
./misc.sh
./misc_tools.sh
./../npm.sh
#./tmux.sh
#./video_tools.sh
./system_utils.sh
./text_editors.sh
#./php.sh
./database.sh
./../vim.sh
./../zsh.sh
./cleanup.sh
