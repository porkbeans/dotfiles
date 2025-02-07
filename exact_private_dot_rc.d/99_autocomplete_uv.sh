# shellcheck shell=sh
if has_command uv; then
  case "${SHELL_NAME}" in
    bash | zsh) eval "$(uv generate-shell-completion "${SHELL_NAME}")" ;;
  esac
fi
