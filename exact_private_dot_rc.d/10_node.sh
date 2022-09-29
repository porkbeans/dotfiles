# shellcheck shell=sh
if has_command volta; then
  export VOLTA_HOME="${HOME}/.volta"
  add_path "${VOLTA_HOME}/bin"
fi

if has_command npm; then
  npm config set prefix "${HOME}/.npm" >/dev/null 2>&1

  # shellcheck disable=SC2155
  add_path "$(npm bin -g 2>/dev/null)"
fi

if has_command yarn; then
  yarn config set prefix "${HOME}/.yarn" >/dev/null 2>&1

  # shellcheck disable=SC2155
  add_path "$(yarn global bin)"
fi
