#!/bin/zsh

# Install Homebrew
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install chezmoi
brew install chezmoi

# Initialize chezmoi with my personal dotfile repository
chezmoi init git@github.com:karimbenbourenane/dotfiles.git

# Pull and apply latest versions of dotfiles
chezmoi update

# Install all system packages, desktop applications, and App Store applications
brew bundle --file "$HOME/.config/brew/Brewfile" install

# Load Antigen and make system update function available
. "$HOME/.zshrc"

# Install and update all Antigen bundles
antigen update

# Install and update all vim-plug plugins
vi -E -s -u "$HOME/.vim/vimrc" +PlugUpgrade +PlugUpdate +PlugClean +qall
