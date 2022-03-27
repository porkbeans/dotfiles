# shellcheck shell=sh
if has_command pyenv; then
  add_path "$(pyenv root)/shims"
  eval "$(pyenv init -)"
fi
