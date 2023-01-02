# shellcheck shell=sh
if has_command volta; then
  export VOLTA_HOME="${HOME}/.volta"
  add_path "${VOLTA_HOME}/bin"
fi
