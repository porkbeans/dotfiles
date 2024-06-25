# shellcheck shell=bash
if [ -n "${BASH_VERSION}" ]; then
  SHELL_NAME="bash"
elif [ -n "${ZSH_VERSION}" ]; then
  SHELL_NAME="zsh"
else
  return 1
fi

export SHELL_NAME

has_command() {
  for command in "$@"; do
    if ! command -v "${command}" >/dev/null 2>&1; then
      return 1
    fi
  done

  return 0
}

lspath() {
  echo "${PATH}" | tr ':' '\n'
}

add_path() {
  if [[ ":${PATH}:" != *:"$1":* ]] ; then
    export PATH="$1${PATH:+":${PATH}"}"
  fi
}

write_only_if_diff() {
  filename="$1"
  content="$(cat -)"

  if [ ! -f "${filename}" ]; then
    printf '%s' "${content}" >"${filename}"
    return
  fi

  sum_file="$(sha512sum "$filename" | cut -d ' ' -f 1)"
  sum_stdin=$(printf '%s' "${content}" | sha512sum - | cut -d ' ' -f 1)

  if [ "${sum_file}" != "${sum_stdin}" ]; then
    printf '%s' "${content}" >"${filename}"
    return
  fi
}
