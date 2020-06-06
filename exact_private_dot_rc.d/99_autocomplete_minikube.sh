if exists_command minikube; then
  eval "$(minikube completion "$(basename "${SHELL}")")"
fi
