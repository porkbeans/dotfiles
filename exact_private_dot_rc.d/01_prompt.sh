export PROMPT_HELPER="starship"

_powerline_update_ps1() {
  local SHELL_NAME=bare

  if [ -n "$BASH_VERSION" ]; then
    SHELL_NAME=bash
  elif [ -n "$ZSH_VERSION" ]; then
    SHELL_NAME=zsh
  fi

  PS1="$(powerline-go -newline -numeric-exit-codes -error $? -shell "${SHELL_NAME}")"
}

if [ -n "$PROMPT_HELPER" ] && exists_command "$PROMPT_HELPER"; then
  case "${PROMPT_HELPER}" in
  powerline-go)
    if [ "$TERM" != "linux" ]; then
      if [ -n "$BASH_VERSION" ]; then
        PROMPT_COMMAND="_powerline_update_ps1; $PROMPT_COMMAND"
      elif [ -n "$ZSH_VERSION" ]; then
        precmd_functions+=(_powerline_update_ps1)
      fi
    fi
    ;;
  starship)
    if [ -n "$BASH_VERSION" ]; then
      eval "$(starship init bash)"
    elif [ -n "$ZSH_VERSION" ]; then
      eval "$(starship init zsh)"
    fi
    ;;
  *)
    # No prompt helper
    ;;
  esac
fi
