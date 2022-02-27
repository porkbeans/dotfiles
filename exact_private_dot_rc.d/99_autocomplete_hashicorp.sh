COMPLETE_ARGS=()
if [ -n "$BASH_VERSION" ]; then
  :
elif [ -n "$ZSH_VERSION" ]; then
  COMPLETE_ARGS+=(-o nospace)
fi

if has_command consul; then
  complete "${COMPLETE_ARGS[@]}" -C /usr/bin/consul consul
fi

if has_command nomad; then
  complete "${COMPLETE_ARGS[@]}" -C /usr/bin/nomad nomad
fi

if has_command terraform; then
  complete "${COMPLETE_ARGS[@]}" -C /usr/bin/terraform terraform
fi

if has_command vault; then
  complete "${COMPLETE_ARGS[@]}" -C /usr/bin/vault vault
fi
