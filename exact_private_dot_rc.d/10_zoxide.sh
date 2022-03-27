# shellcheck shell=sh
if has_command zoxide; then
  eval "$(zoxide init "${SHELL_NAME}")"

  alias d='zoxide query -l'
  alias di='zoxide query -i'
fi
