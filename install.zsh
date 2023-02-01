#!/bin/zsh

# Install chezmoi with my personal dotfile repository and apply latest files
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "$(mktemp -d)" init karimbenbourenane --ssh --apply

# Install Homebrew
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install all system packages, desktop applications, and App Store applications
brew bundle --file "$HOME/.config/brew/Brewfile" install

# Load Antigen and make system update function available
. "$HOME/.zshrc"

# Install and update all Antigen bundles
antigen update

# Install all vim-plug plugins
vi -E -s -u "$HOME/.vim/vimrc" +qall
