# shellcheck shell=sh

export DOCKER_CONTENT_TRUST=0

docker-image-refresh(){
  docker image ls --format '{{.Repository}}:{{.Tag}}' | grep -v '<none>' | xargs -I {} docker pull {}
  docker image prune -f
}

podman-image-refresh(){
  podman image ls --format '{{.Repository}}:{{.Tag}}' | grep -v '<none>' | xargs -I {} podman pull {}
  podman image prune -f
}

lxc-image-refresh(){
  lxc image list -f json | jq -r '.[] | select(.aliases | length != 0) | .update_source.alias' | xargs -I {} lxc image refresh {}
}

lxc-image-pull(){
  lxc image copy --copy-aliases "images:$1" 'local:'
}
