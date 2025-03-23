# shellcheck shell=sh
if [ -d /opt/google-cloud-sdk ]; then
  case "${SHELL_NAME}" in
    bash) source /opt/google-cloud-sdk/completion.bash.inc ;;
    zsh) source /opt/google-cloud-sdk/completion.zsh.inc ;;
  esac
fi
