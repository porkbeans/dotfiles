if exists_command chezmoi; then
  eval "$(chezmoi completion "$(basename "${SHELL}")")"
fi
