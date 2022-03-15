alias ls='exa --group-directories-first'
alias la='exa --group-directories-first -aa'
alias ll='exa --group-directories-first -lbgHaa'

mkcd(){
    mkdir -pv "$1" && cd "$1" || echo "mkcd: failed to create or enter directory '$1'"
}
