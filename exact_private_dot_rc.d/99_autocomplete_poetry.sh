if exists_command poetry; then
  eval "$(poetry completions "${SHELL_NAME}")"
fi
