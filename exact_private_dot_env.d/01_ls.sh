# shellcheck shell=sh
export TIME_STYLE=long-iso

if has_command exa; then
  alias ls='exa --group-directories-first'
  alias la='exa --group-directories-first -aa'
  alias ll='exa --group-directories-first -lbgHaa'
  alias llt='exa --group-directories-first -lbgHTa'
else
  alias ls='ls --group-directories-first'
  alias la='ls --group-directories-first -a'
  alias ll='ls --group-directories-first -la'
fi
