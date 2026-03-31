# dotzsh

zsh config files

## install

this repo is intended to be cloned into `~/.config/zsh`

```sh
git clone git@github.com:aegatlin/dotzsh.git zsh
# or
gh repo clone dotzsh zsh
```

## usage

ensure the following is present in `~/.zshrc`

```sh
# top of file content
autoload -Uz compinit
compinit

# sourcing all the utility files
for config in ~/.config/zsh/*.zsh; do
  source config
done

# rest of file content
eval "$(...)"
export PATH="$PATH:..."
```

once installed you should be able to run `dzh` to see DotZshHelp.
