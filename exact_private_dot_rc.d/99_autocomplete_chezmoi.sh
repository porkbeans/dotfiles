# shellcheck shell=sh
if has_command chezmoi; then
  case "${SHELL_NAME}" in
    bash) eval "$(chezmoi completion "${SHELL_NAME}")" ;;
    zsh) chezmoi completion "${SHELL_NAME}" | write_only_if_diff "${HOME}/.zsh/functions/_chezmoi" ;;
  esac
fi
