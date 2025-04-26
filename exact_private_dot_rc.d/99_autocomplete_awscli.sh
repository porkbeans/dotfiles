# shellcheck shell=sh
if has_command aws && has_command aws_completer; then
  case "${SHELL_NAME}" in
    bash | zsh) eval "complete -C $(command -v aws_completer) aws" ;;
  esac
fi
