# shellcheck shell=sh
if has_command kubectl; then
  eval "$(kubectl completion "${SHELL_NAME}")"
fi

if has_command helm; then
  eval "$(helm completion "${SHELL_NAME}")"
fi

if has_command kind; then
  eval "$(kind completion "${SHELL_NAME}")"
fi

if has_command minikube; then
  eval "$(minikube completion "${SHELL_NAME}")"
fi
