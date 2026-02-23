# shellcheck shell=sh
if has_command tv; then
  eval "$(tv init "${SHELL_NAME}")"
fi
