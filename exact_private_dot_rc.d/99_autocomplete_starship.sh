# shellcheck shell=sh
if has_command starship; then
  case "${SHELL_NAME}" in
    bash) eval "$(starship completions "${SHELL_NAME}")" ;;
    zsh) starship completions "${SHELL_NAME}" | write_only_if_diff "${HOME}/.zsh/functions/_starship" ;;
  esac
fi
