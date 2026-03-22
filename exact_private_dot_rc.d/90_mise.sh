# shellcheck shell=bash

if has_command mise; then
  eval "$(mise activate "${SHELL_NAME}")"
fi
