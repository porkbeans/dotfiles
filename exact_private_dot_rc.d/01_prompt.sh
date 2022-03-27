# shellcheck shell=sh
if has_command starship; then
  eval "$(starship init "${SHELL_NAME}")"
fi
