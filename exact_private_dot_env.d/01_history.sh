# shellcheck shell=sh
case "${SHELL_NAME}" in
  bash)
    export HISTFILE="${HOME}/.bash_history"
    export HISTSIZE=10000
    export HISTFILESIZE=50000
    ;;
  zsh)
    export HISTFILE="${ZDOTDIR}/.zsh_history"
    export SAVEHIST=10000
    export HISTSIZE=10000
    ;;
  *)
    ;;
esac
