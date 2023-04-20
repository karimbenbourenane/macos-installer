#!/bin/sh

# Install chezmoi, Oh My Zsh, and Homebrew
/bin/sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "$(mktemp -d)" init karimbenbourenane --ssh --apply
/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install bundles (system packages and desktop applications)
brew bundle --file "$HOME/.config/brew/Brewfile" install

# Fix permissions for some Homebrew packages on Apple Silicon
if [ -d '/opt/homebrew/share' ]; then
  /bin/chmod -R go-w '/opt/homebrew/share'
fi

# Load zsh startup files pulled in by chezmoi
# shellcheck source=/Users/karim/.config/zsh/.zshenv
. "$HOME/.config/zsh/.zshenv"
# shellcheck source=/Users/karim/.config/zsh/.zshrc
. "$HOME/.config/zsh/.zshrc"

# Install all vim-plug plugins
/usr/bin/vi -E -s -u "$HOME/.vim/vimrc" +quitall
