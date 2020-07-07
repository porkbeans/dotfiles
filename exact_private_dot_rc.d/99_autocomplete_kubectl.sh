if exists_command kubectl; then
  eval "$(kubectl completion "${SHELL_NAME}")"
fi
