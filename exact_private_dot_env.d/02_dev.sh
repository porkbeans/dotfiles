# shellcheck shell=sh
# shellcheck disable=SC2046

export SEARCH_PATH="${HOME}/Repositories:${HOME}/Workspaces:${HOME}/Playgrounds"

pyversions(){
  fd -FHI -t f ".python-version" $(echo "$SEARCH_PATH" | tr : '\n') | sort | xargs bat --paging never 2>/dev/null
}

rbversions(){
  fd -FHI -t f ".ruby-version" $(echo "$SEARCH_PATH" | tr : '\n') | sort | xargs bat --paging never 2>/dev/null
}

has_logged_in() {
  case "$1" in
    aws)
      if aws sts get-caller-identity >/dev/null 2>&1; then
        echo "You're logged in aws." 1>&2
        return 0
      fi
      ;;
    gcloud)
      if [ -n "$(gcloud auth list --format json | jq -rc '.[]' 2>/dev/null)" ]; then
        echo "You're logged in gcloud." 1>&2
        return 0
      fi
      ;;
    *)
      echo "Unsupported argument: $1" 1>&2
      return 1
  esac

  echo "You're not logged in." 1>&2
  return 1
}
