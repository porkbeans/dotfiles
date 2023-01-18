# shellcheck shell=sh
if has_command rbenv; then
  add_path "$(pyenv root)/shims"
  eval "$(rbenv init - | sed -E '/^export PATH=".+"/d')"
fi
