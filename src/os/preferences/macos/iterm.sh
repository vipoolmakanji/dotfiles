#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Iterm2\n\n"

killall "iTerm2" &> /dev/null

execute "rm -f $HOME/.iterm_prefs \
            && ln -sf $(cd ../../.. && pwd)/iterm-prefs $HOME/.iterm_prefs" \
    "Link Custom Iterm prefs to local user dir"

execute "cp $HOME/.iterm_prefs/com.googlecode.iterm2.plist $HOME/Library/Preferences/com.googlecode.iterm2.plist" \
    "Copy Custom Iterm prefs to Iterms Preferences dir"

Open -a iterm
