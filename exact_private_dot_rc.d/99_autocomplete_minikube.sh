if exists_command minikube; then
  eval "$(minikube completion "${SHELL_NAME}")"
fi
