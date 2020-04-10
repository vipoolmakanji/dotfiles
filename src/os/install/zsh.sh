#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

declare -r CURRENT_FOLDER=$(pwd)


install_or_update_oh_my_zsh() {

  declare -r OMZ_DIRECTORY="$HOME/.oh-my-zsh"

  if [ ! -d "$OMZ_DIRECTORY" ]; then
      install_oh_my_zsh
  else
      update_oh_my_zsh
  fi

}

install_oh_my_zsh() {

  declare -r OH_MY_ZSH='sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended'

  execute \
      "$OH_MY_ZSH" \
      "Install Oh-My-Zsh Framework"
}

update_oh_my_zsh() {

  execute \
      "upgrade_oh_my_zsh" \
      "Upgrade Oh-My-Zsh Framework"
}

install_or_update_powerlevel_9k_theme() {

  declare -r OH_MY_ZSH_THEME_PATH=' ~/.oh-my-zsh/custom/themes/powerlevel9k'

  if [ ! -d "$OH_MY_ZSH_THEME_PATH" ]; then
      install_powerlevel_9k_theme $OH_MY_ZSH_THEME_PATH
  else
      update_powerlevel_9k_theme
  fi

}

install_powerlevel_9k_theme() {

  declare -r POWERLEVEL9K_THEME_REPO='https://github.com/bhilburn/powerlevel9k.git'

  execute \
      "git clone $POWERLEVEL9K_THEME_REPO $1" \
      "PowerLevel9K Theme Download"
}

update_powerlevel_9k_theme() {

  declare -r POWERLEVEL9K_THEME_REPO='https://github.com/bhilburn/powerlevel9k.git'
  declare -r OH_MY_ZSH_THEME_PATH=' ~/.oh-my-zsh/custom/themes/powerlevel9k'

  execute \
      "cd $OH_MY_ZSH_THEME_PATH \
          && git fetch --quiet origin \
          && git checkout --quiet \$(git describe --abbrev=0 --tags)" \
      "PowerLevel9K Theme Update"
}

install_powerline_fonts() {

  declare -r POWR_LN_FONTS_DIR="/tmp/powerline-fonts"
  declare -r POWR_LN_FONTS_GIT_REPO_URL="https://github.com/powerline/fonts"

  execute \
      "git clone --quiet $POWR_LN_FONTS_GIT_REPO_URL $POWR_LN_FONTS_DIR" \
      "Cloning Fonts" \
      || return 1

  execute \
      "sh $POWR_LN_FONTS_DIR/install.sh \
          && rm -r $POWR_LN_FONTS_DIR" \
      "Installing Fonts"
}

link_custom_zshrc_file() {

  declare -r CURRENT_DATE_TIME=$(date '+%F_%T')
  execute \
      "mv $HOME/.zshrc $HOME/.zshrc.$CURRENT_DATE_TIME" \
      "Backup default .zshrc profile"

  execute \
      "ln -fs $(cd ../.. && pwd)/shell/zshrc $HOME/.zshrc" \
      "Symlink custom .zshrc: $HOME/.zshrc → $(cd ../.. && pwd)/shell/zshrc"
}
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   ZSH Setup\n\n"

    ask_for_confirmation "Do you want to [install|refresh] ZSH and Oh-My-Zsh?"

    if answer_is_yes; then
      "./$(get_os)/zsh.sh"
      install_or_update_oh_my_zsh
      install_or_update_powerlevel_9k_theme
      install_powerline_fonts
      link_custom_zshrc_file
    fi
}

main
