if exists_command yarn; then
  # shellcheck disable=SC2155
  export PATH="$(yarn global bin):${PATH}"

  # node.js version manager (https://github.com/tj/n)
  export N_PREFIX="${HOME}/n"
  export PATH="${N_PREFIX}/bin:${PATH}"
fi
