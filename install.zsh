#!/bin/sh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install chezmoi
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "$(mktemp -d)" init karimbenbourenane --ssh --apply

# Install Homebrew
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install bundles (system packages and desktop applications)
brew bundle --file "$HOME/.config/brew/Brewfile" install

# Fix permissions for some Homebrew packages on Apple Silicon
if [ -d '/opt/homebrew/share' ]; then
  chmod -R go-w '/opt/homebrew/share'
fi

# Load zsh startup files pulled in by chezmoi
. "$HOME/.config/zsh/.zshenv"
. "$HOME/.config/zsh/.zshrc"

# Install all vim-plug plugins
vi -E -s -u "$HOME/.vim/vimrc" +quitall
