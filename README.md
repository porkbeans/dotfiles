# dotfiles
My dotfiles managed with chezmoi.

**DO NOT** use this repository as is because it contains some tweaks for me.

## Requirements

### Tools
- [git](https://git-scm.com/downloads)
- [1Password](https://developer.1password.com/docs/cli) for secrets management
- [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy) for prettified diff
- [chezmoi](https://github.com/twpayne/chezmoi) for dotfiles management
- [gibo](https://github.com/simonwhitaker/gibo) for .gitignore
- [gcp2aws](https://github.com/porkbeans/gcp2aws) in `/usr/local/bin` for AWS CLI authentication

### Preparation

- Add ssh key to GitHub

## Installation
```shell script
# Install dotfiles
chezmoi init git@github.com:porkbeans/dotfiles.git
chezmoi apply
```

## Update .gitignore
```shell script
gibo dump Jetbrains > .gitignore
```
