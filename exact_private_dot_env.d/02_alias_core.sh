# shellcheck shell=sh
mkcd(){
  mkdir -pv "$1" && cd "$1" || echo "mkcd: failed to create or enter directory '$1'"
}

entropy(){
  cat /proc/sys/kernel/random/entropy_avail /proc/sys/kernel/random/poolsize | paste -s -d /
}
