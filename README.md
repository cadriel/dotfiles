# Dotfiles

## Overview

Installs dotfiles and a base set of applications by way of homebrew. 🍺 will install XCode CommandLine Tools if it's not already present.

The default shell is Fish.

Node versions are managed with `n`, Ruby versions are managed with `frum`.

## Installation

Get started right away by running this in your terminal.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/cadriel/dotfiles/HEAD/install.sh)"
```

Update the repository remote url in order to use your `.ssh` keys.

```bash
cd ~/.local/share/chezmoi
git remote set-url origin git@github.com:cadriel/dotfiles.git
```

Continue with defining sane default installs of `node` and `ruby` with the following.

```bash
# Install the latest node LTS
n lts

# Install the latest Ruby (at time of writing)
frum install 3.1.2
frum global 3.1.2
```
