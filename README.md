# dotfiles
My dotfiles managed with chezmoi.

**DO NOT** use this repository as is because it contains some tweaks for me.  

## Requirements

### Tools
- [git](https://git-scm.com/downloads)
- [gpg](https://gnupg.org/download/)
- [gopass](https://github.com/gopasspw/gopass) for secrets management
- [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy) for prettified diff
- [chezmoi](https://github.com/twpayne/chezmoi) for dotfiles management
- [gibo](https://github.com/simonwhitaker/gibo) for .gitignore

### Preparation

- Add ssh key to GitHub
- Restore gpg secret keys
- Setup minimal chezmoi config
    > **`~/.config/chezmoi/chezmoi.toml`**
    > ```toml
    > [genericSecret]
    > command = "gopass"
    > ```

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
