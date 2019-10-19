#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Iterm2\n\n"

killall "iTerm2" &> /dev/null

execute "ln -s $(cd ../../.. && pwd)/iterm-prefs $HOME/.iterm_prefs" \
    "Link Custom Iterm prefs to local user dir"

execute "cp $HOME/.iterm_prefs/com.googlecode.iterm2.plist $HOME/Library/Preferences/com.googlecode.iterm2.plist" \
    "Link Custom Iterm prefs to local user dir"

Open -a iterm
