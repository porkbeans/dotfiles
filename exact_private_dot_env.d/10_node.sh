# shellcheck shell=sh
if has_command volta; then
  export VOLTA_HOME="${HOME}/.volta"
  add_path "${VOLTA_HOME}/bin"

  volta_clean_node(){
    node_version="$1"

    if [ -z "${node_version}" ]; then
      echo "Empty argument. Specify node version."
      return
    fi

    if [ ! -d "${HOME}/.volta/tools/image/node/${node_version}/" ]; then
      echo "node v${node_version} not found"
      return
    fi

    rm -rf "${HOME}/.volta/tools/image/node/${node_version}/"
    rm "${HOME}/.volta/tools/inventory/node/node-v${node_version}"-*
  }
fi
