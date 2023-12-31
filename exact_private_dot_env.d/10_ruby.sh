# shellcheck shell=sh
if has_command rbenv; then
  add_path "$(rbenv root)/shims"
  eval "$(rbenv init - | sed -E '/^export PATH=".+"/d')"
fi
