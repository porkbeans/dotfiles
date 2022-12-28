# shellcheck shell=sh
if has_command aws; then
  case "${SHELL_NAME}" in
    bash | zsh)
      eval 'complete -C /usr/bin/aws_completer aws'
      ;;
  esac
fi
