#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

declare -r CURRENT_FOLDER=$(pwd)


install_oh_my_zsh() {

  declare -r OH_MY_ZSH='sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"'

  execute \
      "$OH_MY_ZSH" \
      "Oh-My-Zsh Framework"
}

install_powerlevel_9k_theme() {

  declare -r POWERLEVEL9K_THEME_REPO='https://github.com/bhilburn/powerlevel9k.git'
  declare -r OH_MY_ZSH_THEME_PATH=' ~/.oh-my-zsh/custom/themes/powerlevel9k'

  execute \
      "git clone $POWERLEVEL9K_THEME_REPO $OH_MY_ZSH_THEME_PATH" \
      "PowerLevel9K Theme Download"
}

install_powerline_fonts() {

  declare -r POWR_LN_FONTS_DIR="$CURRENT_FOLDER/../../powerline-fonts"
  declare -r POWR_LN_FONTS_GIT_REPO_URL="https://github.com/powerline/fonts"

  execute \
      "git clone --quiet $POWR_LN_FONTS_GIT_REPO_URL $POWR_LN_FONTS_DIR" \
      "Cloning Fonts" \
      || return 1

  execute \
      "sh $CURRENT_FOLDER/../../powerline-fonts/install.sh" \
      "Installing Fonts"
}

link_custom_zshrc_file() {

  execute \
      "mv $HOME/.zshrc $HOME/.zshrc-defualt" \
      "Backup default .zshrc profile"

  execute \
      "ln -fs $(cd ../.. && pwd)/shell/zshrc $HOME/.zshrc" \
      "Symlink custom .zshrc: $HOME/.zshrc → $(cd ../.. && pwd)/shell/zshrc"
}
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   ZSH Setup\n\n"

    "./$(get_os)/zsh.sh"
    install_oh_my_zsh
    install_powerlevel_9k_theme
    install_powerline_fonts
    link_custom_zshrc_file
}

main
