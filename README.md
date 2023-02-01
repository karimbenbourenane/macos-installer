# macos-installer
Karim Benbourenane's personal macOS installer script. For both fun and profit. Aquick way to prepare a fresh machine to have all the tools of the trade as well as personal artifacts, the way I like it.

`/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/karimbenbourenane/macos-installer/master/install.zsh)"`

Paste that into a macOS Terminal and hit `enter` to run the installer.

## What does it do?
In the following order, this script
1. Installs the `chezmoi` dotfile manager
2. Initializes `chezmoi` using my dotfile repository
   - The dotfile repository is not public
3. Pulls down and stages all the latest dotfiles in that repository
   - Includes configuration for `Homebrew` brew bundles via `Brewfile`
   - Includes configuration for `Antigen` zsh plugin manager via `antigenrc`
   - Includes configuration for `vim-plug` vim plugin manager via `vimrc`
   - Includes configuration for several other things like ssh, git, and gpg
4. Installs the `Homebrew` package manager
5. Installs all `Homebrew` bundles in `Brewfile`
   - Includes `Antigen` zsh plugin manager
6. Sources the freshly retrieved zsh configuration files from `chezmoi`
   - Allows `Antigen` to become usable within the same shell session
   - Includes a zsh `update` function that keeps packages and plugins up to date
      - Keeps `Homebrew` bundles updated
      - Keeps `Antigen` plugins updated
      - Keeps `vim-plug` plugins updated
7. Installs all `Antigen` zsh plugins in `antigenrc`
8. Installs `vim-plug` and vim plugins in `vimrc`

## Can I use this?
No. If you're reading this and you're not me, this script of of zero value to you. It requires access to the private dotfile repository, which only I have access to. I'm hosting this project publicly so that I can quickly bootstrap a new machine at a moments notice by running a single command.

## Why is this public then?
Because I wanted to create the most brain-dead way of setting up a new development machine, and preparing this script to be used at a moments notice was the path of least resistance. I didn't write this for you, I wrote it so I wouldn't forget how to run this in the future.

## The `update` function
Once everything is installed, you're ready to go. The `update` function is loaded into each Terminal session, and can be executed to keep everything up to date in one convenient shell command.
