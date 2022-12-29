# shellcheck shell=sh
if has_command step; then
  eval "$(step completion "${SHELL_NAME}")"
fi
