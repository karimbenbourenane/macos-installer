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
6. Sources the freshly retrieved zsh configuration files from `chezmoi`
   - Allows `Antigen` to become usable within the same shell session
   - Includes a zsh `update` function that keeps packages and plugins up to date
      - `Homebrew`
      - `Antigen`
      - `vim-plug`
7. Installs all `Antigen` zsh plugins defined in the configuration
8. Executes the `update` to get all packages and plugins up to date

## Can I use this?
No. If you're reading this and you're not me, this script of of zero value to you. It requires access to the private dotfile repository, which only I have access to. I'm hosting this project publicly so that I can quickly bootstrap a new machine at a moments notice by running a single command.

## Why is this public then?
Because I wanted to create the most brain-dead way of setting up a new development machine, and preparing this script to be used at a moments notice was the path of least resistance. I didn't write this for you, I wrote it so I wouldn't forget how to run this in the future.
