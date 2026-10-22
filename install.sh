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

# install homebrew
command -v brew >/dev/null 2>&1 || \
  (echo '🍺  Installing Homebrew' && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)")
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install chezmoi
command -v chezmoi >/dev/null 2>&1 || \
  (echo '👊  Installing chezmoi' && brew install chezmoi)

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
