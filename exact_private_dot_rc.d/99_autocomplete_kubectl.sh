if exists_command kubectl; then
  eval "$(kubectl completion "$(basename "${SHELL}")")"
fi
