# shellcheck shell=sh
if has_command codex; then
  case "${SHELL_NAME}" in
    bash | zsh) eval "$(codex completion "${SHELL_NAME}")"
  esac
fi

if has_command jules; then
  case "${SHELL_NAME}" in
    bash | zsh) eval "$(jules completion "${SHELL_NAME}")"
  esac
fi
