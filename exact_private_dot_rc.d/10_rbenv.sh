if has_command rbenv; then
  eval "$(rbenv init - | sed -E 's/export PATH="(.+):\$\{PATH\}"/add_path "\1"/')"
fi
