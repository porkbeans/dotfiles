_powerline_update_ps1() {
  local SHELL_NAME=bare

  if [ -n "$BASH_VERSION" ]; then
    SHELL_NAME=bash
  elif [ -n "$ZSH_VERSION" ]; then
    SHELL_NAME=zsh
  fi

  PS1="$(powerline-go -newline -numeric-exit-codes -error $? -shell "${SHELL_NAME}")"
}

if [ "$TERM" != "linux" ]; then
  if [ -n "$BASH_VERSION" ]; then
    PROMPT_COMMAND="_powerline_update_ps1; $PROMPT_COMMAND"
  elif [ -n "$ZSH_VERSION" ]; then
    precmd_functions+=(_powerline_update_ps1)
  fi
fi
