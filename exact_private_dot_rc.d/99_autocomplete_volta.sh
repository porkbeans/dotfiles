# shellcheck shell=sh
if has_command volta; then
  eval "$(volta completions "${SHELL_NAME}")"
fi
