# shellcheck shell=sh
if has_command direnv; then
  eval "$(direnv hook "${SHELL_NAME}")"

  if has_command tmux; then
    alias tmux='direnv exec / tmux'
  fi
fi
