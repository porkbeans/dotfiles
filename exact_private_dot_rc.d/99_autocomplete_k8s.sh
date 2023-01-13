# shellcheck shell=sh
for command in kubectl helm kind minikube; do
  if has_command "${command}"; then
    case "${SHELL_NAME}" in
      bash) eval "$("${command}" completion "${SHELL_NAME}")" ;;
      zsh) "${command}" completion "${SHELL_NAME}" | write_only_if_diff "${HOME}/.zsh/functions/_${command}" ;;
    esac
  fi
done
