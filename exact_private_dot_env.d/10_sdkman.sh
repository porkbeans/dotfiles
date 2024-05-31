# shellcheck shell=bash disable=SC1091
export SDKMAN_DIR="${HOME}/.sdkman"
[ -f "${SDKMAN_DIR}/bin/sdkman-init.sh" ] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"
