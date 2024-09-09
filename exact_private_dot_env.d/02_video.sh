# shellcheck shell=sh

if has_command mediainfo; then
  is-streamable() {
    for f in "$@"; do
      echo "$f:$(mediainfo -f "$f" | grep IsStreamable | tr -d ' ' | cut -d : -f 2)"
    done | column -t -s :
  }
fi
