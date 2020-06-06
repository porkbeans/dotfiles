COMPLETE_ARGS=()
if [ -n "$BASH_VERSION" ]; then
  :
elif [ -n "$ZSH_VERSION" ]; then
  COMPLETE_ARGS+=(-o nospace)
fi

if exists_command consul; then
  complete "${COMPLETE_ARGS[@]}" -C /usr/bin/consul consul
fi

if exists_command nomad; then
  complete "${COMPLETE_ARGS[@]}" -C /usr/bin/nomad nomad
fi

if exists_command terraform; then
  complete "${COMPLETE_ARGS[@]}" -C /usr/bin/terraform terraform
fi

if exists_command vault; then
  complete "${COMPLETE_ARGS[@]}" -C /usr/bin/vault vault
fi
