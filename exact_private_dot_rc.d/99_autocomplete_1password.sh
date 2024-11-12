# shellcheck shell=sh
if has_command op; then
  case "${SHELL_NAME}" in
    bash) eval "$(op completion "${SHELL_NAME}")" ;;
    zsh) op completion "${SHELL_NAME}" | write_only_if_diff "${HOME}/.zsh/functions/_op" ;;
  esac
fi
