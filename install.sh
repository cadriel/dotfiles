#!/bin/bash

set -eufo pipefail

echo ""
echo "🤚  This script will setup .dotfiles for you."
echo "🤚  It should only need to be run once, after which you should use chezmoi."
read -n 1 -r -s -p $'    Press any key to continue or Ctrl+C to abort...\n\n'

# read initial variables
read -p 'Enter your email: ' USER_EMAIL
read -p 'Enter your hostname: ' USER_COMPUTERNAME
export USER_EMAIL
export USER_COMPUTERNAME
USER_OS=`uname`
USER_ARCH=`uname -m`

if [ ${USER_OS} == 'Linux' ]; then
  DISTRO=$(lsb_release -i | cut -d: -f2 | sed s/'^\t'//)
fi

if [ ${USER_OS} == 'Darwin' ]; then
  # install homebrew
  command -v brew >/dev/null 2>&1 || \
    (echo '🍺  Installing Homebrew' && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)")
    if [ ${USER_ARCH} == 'amd64' ]; then
      eval "$(/usr/local/bin/brew shellenv)"
    fi
    if [ ${USER_ARCH} == 'arm64' ]; then
      eval "$(/opt/homebrew/bin/brew shellenv)"
    fi

  # Install chezmoi
  command -v chezmoi >/dev/null 2>&1 || \
    (echo '👊  Installing chezmoi' && brew install chezmoi)
fi

if [ ${USER_OS} == 'Linux' ] && [ ${DISTRO} == 'Ubuntu' ]; then
  # Install chezmoi
  command -v chezmoi >/dev/null 2>&1 || \
    (echo '👊  Installing chezmoi' && sudo snap install chezmoi --classic)
fi

# Initialize chezmoi
if [ -d "$HOME/.local/share/chezmoi/.git" ]; then
  echo "🚸  chezmoi already initialized"
  echo "    Update with: 'chezmoi update'"
else
  echo "🚀  Initializing dotfiles with: 'chezmoi init https://github.com/cadriel/dotfiles.git'"
  chezmoi init --apply https://github.com/cadriel/dotfiles.git
fi

echo ""
echo "Done."
