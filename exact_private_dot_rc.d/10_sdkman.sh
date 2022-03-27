# shellcheck shell=sh
export SDKMAN_DIR="${HOME}/.sdkman"

# shellcheck disable=SC1091
[ -f "${SDKMAN_DIR}/bin/sdkman-init.sh" ] && . "${SDKMAN_DIR}/bin/sdkman-init.sh"
