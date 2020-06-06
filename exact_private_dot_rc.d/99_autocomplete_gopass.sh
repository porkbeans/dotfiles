if exists_command gopass; then
  eval "$(gopass completion "$(basename "${SHELL}")")"
fi
