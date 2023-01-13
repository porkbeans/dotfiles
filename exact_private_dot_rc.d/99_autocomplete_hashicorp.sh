# shellcheck shell=sh
if [ -n "$BASH_VERSION" ]; then
  COMPLETE_ARGS=''
elif [ -n "$ZSH_VERSION" ]; then
  COMPLETE_ARGS='-o nospace'
else
  return 1
fi

if has_command consul; then
  eval "complete ${COMPLETE_ARGS} -C '$(which consul)' consul"
fi

if has_command nomad; then
  eval "complete ${COMPLETE_ARGS} -C '$(which nomad)' nomad"
fi

if has_command terraform; then
  eval "complete ${COMPLETE_ARGS} -C '$(which terraform)' terraform"
fi

if has_command vault; then
  eval "complete ${COMPLETE_ARGS} -C '$(which vault)' vault"
fi
