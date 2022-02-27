if has_command starship; then
  # https://github.com/starship/starship/issues/2806
  eval "$(starship completions "${SHELL_NAME}" | sed '$d')"
fi
