# shellcheck shell=sh
if has_command volta; then
  case "${SHELL_NAME}" in
    bash) eval "$(volta completions "${SHELL_NAME}")" ;;
    zsh) volta completions "${SHELL_NAME}" | write_only_if_diff "${HOME}/.zsh/functions/_volta" ;;
  esac
fi
