if has_command exa; then
  alias ls='exa --group-directories-first'
  alias la='exa --group-directories-first -aa'
  alias ll='exa --group-directories-first -lbgHaa'
else
  alias ls='ls --group-directories-first'
  alias la='ls --group-directories-first -a'
  alias ll='ls --group-directories-first -la'
fi

mkcd(){
  mkdir -pv "$1" && cd "$1" || echo "mkcd: failed to create or enter directory '$1'"
}

entropy(){
  cat /proc/sys/kernel/random/{entropy_avail,poolsize} | paste -s -d /
}
