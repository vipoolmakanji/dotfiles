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

# ./android.sh

./gpg.sh
./gnu_tools.sh
./misc_applications.sh
./misc_tools.sh
./../npm.sh
#./tmux.sh
#./video_tools.sh
./system_utils.sh
./text_editors.sh
#./php.sh
# ./database.sh
./../vim.sh
./../zsh.sh
./python.sh
./cleanup.sh
