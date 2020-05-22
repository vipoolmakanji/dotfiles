
# https://realpython.com/intro-to-pyenv/#installing-pyenv

# find $HOME/.zsh/ -name \*.sh -type f -exec source '{}' \;
export PATH="$HOME/.pyenv/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi
