# shellcheck shell=bash
if [ -e "${DESK_ENV}" ]; then
  # shellcheck disable=SC1090
  source "${DESK_ENV}"
fi
