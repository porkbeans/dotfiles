# shellcheck shell=sh
if has_command codex; then
  mkdir -p "${HOME}/.codex_openbook"
  alias codex_openbook="CODEX_HOME=${HOME}/.codex_openbook codex"
fi
