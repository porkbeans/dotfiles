if exists_command kubectl; then
  eval "$(kubectl completion "${SHELL_NAME}")"
fi

if exists_command kind; then
  eval "$(kind completion "${SHELL_NAME}")"
fi

if exists_command minikube; then
  eval "$(minikube completion "${SHELL_NAME}")"
fi
