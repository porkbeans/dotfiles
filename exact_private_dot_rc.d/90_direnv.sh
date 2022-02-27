if has_command direnv; then
  eval "$(direnv hook "${SHELL_NAME}")"
fi
