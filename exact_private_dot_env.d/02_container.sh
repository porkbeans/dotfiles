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

lxc-image-ls() {
  lxc image list -f json |
    jq -r '["NAME", "TYPE", "SIZE", "FINGERPRINT"], ([.[] | {"name": .update_source.alias, type, size, fingerprint}] | sort_by(.name, .type) | .[] | [.name, .type, .size, .fingerprint]) | @tsv' |
    numfmt --to si --suffix B --field 3 --invalid ignore -d $'\t' |
    column -ts $'\t' -R 3
}

lxc-image-ll() {
  lxc image list -f json |
    jq -r '["NAME", "TYPE", "DESC", "SIZE", "FINGERPRINT"], ([.[] | {"name": .update_source.alias, type, "desc": .properties.description, size, fingerprint}] | sort_by(.name, .type) | .[] | [.name, .type, .desc, .size, .fingerprint]) | @tsv' |
    numfmt --to si --suffix B --field 4 --invalid ignore -d $'\t' |
    column -ts $'\t' -R 4
}

lxc-image-refresh() {
  # shellcheck disable=SC2046
  lxc image refresh $(lxc image list -f json | jq -r '.[].fingerprint')
}

lxc-image-pull() {
  lxc image copy --copy-aliases "images:$1" 'local:'
}
