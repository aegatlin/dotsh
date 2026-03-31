# dotsh

config files for zsh on mac and bash on linux

## install

this repo is intended to be cloned into `~/.config/sh`

```sh
git clone git@github.com:aegatlin/dotsh.git sh
# or
gh repo clone dotsh sh
```

## usage

### mac

ensure the following is present in `~/.zshrc`

```sh
# top of file content
autoload -Uz compinit
compinit

# sourcing all the utility files
for dotsh_file in ~/.config/sh/*.sh; do
  source "$dotsh_file"
done

# rest of file content
eval "$(...)"
export PATH="$PATH:..."
```

### bash

ensure the following is present in `~/.bashrc`

```sh
# sourcing all the utility files
for dotsh_file in ~/.config/sh/*.sh; do
  source "$dotsh_file"
done

# rest of file content
eval "$(...)"
export PATH="$PATH:..."
```
