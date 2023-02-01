# macos-installer
Karim Benbourenane's personal macOS development environment installer script.

`/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/karimbenbourenane/macos-installer/master/install.zsh)"`

Paste that into a macOS Terminal and hit `enter` to run the installer

## What does it do?
In the following order, this script
1. Installs the `Homebrew` package manager
2. Installs the `chezmoi` dotfile manager
3. Initializes `chezmoi` using a dotfile repository
   - The dotfile repository is not public
4. Pulls down and stages all the latest dotfiles in that repository
   - Includes configuration for `Homebrew Bundle` via a `Brewfile`
   - Includes configuration for `Antigen` zsh plugin manager
   - Includes configuration for `vim-plug` vim plugin manager
5. Installs all packages in the `Brewfile`
   - Includes `Antigen` zsh plugin manager
6. Sources the freshly retrieved zsh configuration
7. Updates all `Antigen` plugins
