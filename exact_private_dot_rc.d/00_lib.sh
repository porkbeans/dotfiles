# shellcheck disable=SC2155
if [ -n "$BASH_VERSION" ]; then
  export SHELL_NAME="bash"
elif [ -n "$ZSH_VERSION" ]; then
  export SHELL_NAME="zsh"
else
  export SHELL_NAME="$(basename "${SHELL}")"
fi

exists_command() {
  command -v "$1" >/dev/null 2>&1
}
