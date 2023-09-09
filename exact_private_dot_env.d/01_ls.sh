# shellcheck shell=sh
export TIME_STYLE=long-iso

if has_command eza; then
  alias ls='eza --group-directories-first'
  alias la='eza --group-directories-first -aa'
  alias ll='eza --group-directories-first -lbgHaa'
  alias llt='eza --group-directories-first -lbgHTa'
else
  alias ls='ls --group-directories-first'
  alias la='ls --group-directories-first -a'
  alias ll='ls --group-directories-first -la'
fi
