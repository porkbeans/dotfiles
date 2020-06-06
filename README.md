# dotfiles
My dotfiles managed with chezmoi.

**DO NOT** use this repository as is because it contains some tweaks for me.  

## Requirements
- [chezmoi](https://github.com/twpayne/chezmoi)
- [gibo](https://github.com/simonwhitaker/gibo) for .gitignore
- [gopass](https://github.com/gopasspw/gopass) for secrets management

## Installation
```shell script
# Clone password store
gopass clone git@github.com:porkbeans/pass.git
gopass clone git@github.com:messyzone/pass.git messyzone

# Install dotfiles
chezmoi init git@github.com:porkbeans/dotfiles.git
chezmoi apply
```

## Update .gitignore
```shell script
gibo dump Jetbrains > .gitignore
```
