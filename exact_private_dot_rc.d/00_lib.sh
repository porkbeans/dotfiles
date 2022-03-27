# shellcheck shell=sh
if [ -n "${BASH_VERSION}" ]; then
  SHELL_NAME="bash"
elif [ -n "${ZSH_VERSION}" ]; then
  SHELL_NAME="zsh"
else
  return 1
fi

export SHELL_NAME

has_command() {
  command -v "$1" >/dev/null 2>&1
}

lspath() {
  echo "${PATH}" | tr : '\n'
}

add_path() {
  case ":${PATH}:" in
  *:"$1":*) ;;

  *)
    export PATH="$1${PATH:+:$PATH}"
    ;;
  esac
}
