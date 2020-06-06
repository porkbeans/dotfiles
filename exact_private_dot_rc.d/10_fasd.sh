if exists_command fasd; then
  eval "$(fasd --init auto)"

  alias v='fasd -ae nvim'
  alias vv='fasd -aie nvim'
  alias o='fasd -ae xdg-open'
fi
