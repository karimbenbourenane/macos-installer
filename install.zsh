#!/bin/zsh

bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install chezmoi
chezmoi init git@github.com:karimbenbourenane/dotfiles.git
chezmoi update
brew bundle --file "$HOME/.config/brew/Brewfile" install
. "$HOME/.zshrc"
antigen update
