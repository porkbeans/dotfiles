# shellcheck shell=sh
if has_command step; then
  case "${SHELL_NAME}" in
    bash) eval "$(step completion "${SHELL_NAME}")" ;;
    zsh) step completion "${SHELL_NAME}" | write_only_if_diff "${HOME}/.zsh/functions/_step" ;;
  esac
fi
