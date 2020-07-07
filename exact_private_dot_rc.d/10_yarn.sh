if exists_command yarn; then
  # shellcheck disable=SC2155
  export PATH="$(yarn global bin):${PATH}"
fi
