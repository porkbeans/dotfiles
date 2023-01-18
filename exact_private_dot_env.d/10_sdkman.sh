# shellcheck shell=sh
# shellcheck disable=SC1091
export SDKMAN_DIR="${HOME}/.sdkman"
[ -f "${SDKMAN_DIR}/bin/sdkman-init.sh" ] && . "${SDKMAN_DIR}/bin/sdkman-init.sh"
