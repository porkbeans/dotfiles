# shellcheck shell=sh

export DOCKER_CONTENT_TRUST=0

docker-image-refresh() {
  docker image ls --format '{{.Repository}}:{{.Tag}}' | grep -v '<none>' | xargs -I {} docker pull {}
  docker image prune -f
}

podman-image-refresh() {
  podman image ls --format '{{.Repository}}:{{.Tag}}' | grep -v '<none>' | xargs -I {} podman pull {}
  podman image prune -f
}

lxc-image-list() {
  lxc image list -f json |
    jq -r '["NAME", "SOURCE", "TYPE", "DESC", "SIZE", "FINGERPRINT"], ([.[] | {"name": (.aliases | sort_by(.name)[0].name), "source": .update_source.alias, type, "desc": .properties.description, size, fingerprint}] | sort_by(.source, .type) | .[] | [.name, .source, .type, .desc, .size, .fingerprint]) | @tsv' |
    numfmt --to si --suffix B --field 5 --invalid ignore -d $'\t' |
    column -ts $'\t' -R 5
}

alias lxc-image-ls=lxc-image-list

lxc-image-refresh() {
  # shellcheck disable=SC2046
  lxc image refresh $(lxc image list -f json | jq -r '.[].fingerprint')
}

lxc-image-pull() {
  lxc image copy --copy-aliases "images:$1" 'local:'
}
