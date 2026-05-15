# shellcheck shell=sh
if has_command ntn; then
  case "${SHELL_NAME}" in
    bash | zsh) eval "$(ntn completions "${SHELL_NAME}")" ;;
  esac
fi
