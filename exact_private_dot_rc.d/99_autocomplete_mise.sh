# shellcheck shell=sh
if has_command mise; then
  case "${SHELL_NAME}" in
    bash)
      mkdir -p "${HOME}/.local/share/bash-completion/completions"
      mise completion "${SHELL_NAME}" --include-bash-completion-lib | write_only_if_diff "${HOME}/.local/share/bash-completion/completions/mise"
      ;;
    zsh)
      mise completion "${SHELL_NAME}" | write_only_if_diff "${HOME}/.zsh/functions/_mise"
      ;;
  esac
fi
