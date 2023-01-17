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

lxc-image-refresh() {
  # shellcheck disable=SC2046
  lxc image refresh $(lxc image list -f json | jq -r '.[].fingerprint')
}

lxc-image-pull() {
  lxc image copy --copy-aliases "images:$1" 'local:'
}
