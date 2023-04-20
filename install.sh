#!/bin/sh

# Begin installation
echo "Installing dotfiles"
echo "For more information, see https://github.com/karimbenbourenane/macos-installer"

# Install chezmoi, Oh My Zsh, and Homebrew
echo "Installing chezmoi"
/bin/sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "$(mktemp -d)" init karimbenbourenane --ssh --apply
echo "Installing Oh My Zsh"
/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install bundles (system packages and desktop applications)
echo "Installing Homebrew bundles"
$(command -v brew) bundle --file "$HOME/.config/brew/Brewfile" install

# Fix permissions for some Homebrew packages on Apple Silicon
if [ -d '/opt/homebrew/share' ]; then
	echo "Fixing permissions for Homebrew packages"
	/bin/chmod -R go-w '/opt/homebrew/share'
fi

# Load zsh startup files pulled in by chezmoi
echo "Loading zsh startup files"
. "$HOME/.config/zsh/.zshenv"
. "$HOME/.config/zsh/.zshrc"

# Install all vim-plug plugins
echo "Installing vim-plug plugins"
/usr/bin/vi -E -s -u "$HOME/.vim/vimrc" +quitall

# Complete installation
echo "Installation complete"
