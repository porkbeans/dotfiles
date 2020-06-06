if exists_command direnv; then
  eval "$(direnv hook "$(basename "${SHELL}")")"
fi

export NODE_VERSIONS="${N_PREFIX}/n/versions/node"
export NODE_VERSION_PREFIX=''
