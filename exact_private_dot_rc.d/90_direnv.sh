if exists_command direnv; then
  eval "$(direnv hook "$(basename "${SHELL}")")"
fi
