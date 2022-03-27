# shellcheck shell=sh
if [ -e "${DESK_ENV}" ]; then
  # shellcheck disable=SC1090
  . "${DESK_ENV}"
fi
