# shellcheck disable=SC2155
export TERM_FG_RED=$(tput setaf 1)
export TERM_FG_GREEN=$(tput setaf 2)
export TERM_FG_YELLOW=$(tput setaf 3)

export TERM_BG_RED=$(tput setab 1)
export TERM_BG_GREEN=$(tput setab 2)
export TERM_BG_YELLOW=$(tput setab 3)

export TERM_RESET_STYLES=$(tput sgr0)

echo_ok() {
  echo "${TERM_FG_GREEN}OK:${TERM_RESET_STYLES} $*"
}

echo_warn() {
  echo "${TERM_FG_YELLOW}WARNING:${TERM_RESET_STYLES} $*"
}

echo_error() {
  echo "${TERM_FG_RED}ERROR:${TERM_RESET_STYLES} $*"
}

echo_success() {
  echo "${TERM_FG_GREEN}SUCCESS:${TERM_RESET_STYLES} $*"
}

echo_failure() {
  echo "${TERM_FG_RED}FAILURE:${TERM_RESET_STYLES} $*"
}

exists_command() {
  command -v "$1" >/dev/null 2>&1
}
