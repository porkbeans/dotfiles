# shellcheck disable=SC2155
if [ -n "$BASH_VERSION" ]; then
  export SHELL_NAME="bash"
elif [ -n "$ZSH_VERSION" ]; then
  export SHELL_NAME="zsh"
else
  export SHELL_NAME="$(basename "${SHELL}")"
fi

has_command() {
  command -v "$1" >/dev/null 2>&1
}

add_path() {
  case ":$PATH:" in
  *:"$1":*) ;;

  *)
    export PATH="$1${PATH:+:$PATH}"
    ;;
  esac
}
