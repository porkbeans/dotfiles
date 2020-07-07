# shellcheck disable=SC2155

exists_command() {
  command -v "$1" >/dev/null 2>&1
}
