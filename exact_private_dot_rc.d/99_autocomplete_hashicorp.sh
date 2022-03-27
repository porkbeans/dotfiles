# shellcheck shell=sh
if [ -n "$BASH_VERSION" ]; then
  COMPLETE_ARGS=''
elif [ -n "$ZSH_VERSION" ]; then
  COMPLETE_ARGS='-o nospace'
else
  return 1
fi

if has_command consul; then
  eval "complete ${COMPLETE_ARGS} -C /usr/bin/consul consul"
fi

if has_command nomad; then
  eval "complete ${COMPLETE_ARGS} -C /usr/bin/nomad nomad"
fi

if has_command terraform; then
  eval "complete ${COMPLETE_ARGS} -C /usr/bin/terraform terraform"
fi

if has_command vault; then
  eval "complete ${COMPLETE_ARGS} -C /usr/bin/vault vault"
fi
