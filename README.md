# macos-installer

Karim Benbourenane's personal macOS installer script. For both fun and profit. A quick way to prepare a fresh machine to
have all the tools of the trade as well as personal artifacts, the way I like it.

`/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/karimbenbourenane/macos-installer/master/configurator)"`

Paste the above command into a macOS Terminal and execute it to run the installer.

## What does it do?

In the following order, this script:

1. Installs the `chezmoi` dotfile manager
2. Initializes `chezmoi` using the dotfile repository of the named `github` user.
    - The `dotfiles` repository is not public
3. Pulls down and stages all the latest dotfiles in that repository
    - Includes configuration for `Homebrew` brew bundles via `Brewfile`
    - Includes configuration for `vim-plug` vim plugin manager via `vimrc`
    - Includes configuration for several other things like ssh, git, and gpg
4. Creates folder structure for XDG Base Directory Specification
5. Installs `Oh My Zsh`
6. Installs the `Homebrew` package manager
7. Installs all `Homebrew` bundles in `Brewfile`
8. Installs static PyCharm script
9. Installs `vim-plug` and vim plugins in `vimrc`
10. Installs `GitHub Copilot` for command line

## Can I use this?

No. Well, maybe, but probably not.

If you're reading this and you're not me, the `configurator` script may be of little value to you. It requires access to
a private `dotfiles` repository for the user specified that I believe needs to be set up in the way `chezmoi` expects.
This project is opinionated with a heavy bias to myself and I've set it up so that I can quickly bootstrap a new
machine (the way I like it) at a moments notice by running a single command.

## Why is this public then?

Because I wanted to create the most brain-dead way of setting up a new development machine, and preparing this script to
be used at a moments notice was the path of least resistance. It's accessible from the internet no matter where I am in
the world and I don't have to worry about misplacing my USB drive. I didn't write this for you, I wrote it so I wouldn't
forget how to run this in the future.

## What if I still want to use it?

You may want to answer some questions first:

- Are you a developer that uses [`macOS`](https://www.apple.com/macos)?
- Are you a frequent user of [`Homebrew`](https://brew.sh) for package management?
- Do you already use or plan to use [`chezmoi`](https://www.chezmoi.io) for versioning your dotfiles?
- Do you like strictly adhering to the [
  `XDG Base Directory Specification`](https://specifications.freedesktop.org/basedir-spec/latest) for config, data,
  runtime, and other directories?
- Are you a `vi`/`vim` minimalist that uses only [`vim-plug`](https://github.com/junegunn/vim-plug) for managing `vi`/
  `vim` plugins?
- Do you use `brew-bundle` and keep your list of installed software tucked inside a [
  `Brewfile`](https://github.com/Homebrew/homebrew-bundle)?
- Do you also happen to regularly use [`PyCharm`](https://www.jetbrains.com/pycharm)?
- Is [`zsh`](https://www.zsh.org) your primary shell and do you want or need to use [`Oh My Zsh`](https://ohmyz.sh)?
- Finally, do you want or need [`GitHub Copilot`](https://github.com/features/copilot) to be installed on your system?

If you answered "yes" to all of these questions, could you please send me an email or leave a voicemail as a courtesy?
I'd like to have enough time to find a good hiding place before my dopplegänger comes to exterminate me.

Also, if you answered "yes", you can use this configurator the same way I would, just by inputting your `GitHub`
credentials when prompted. It will set things up using your own personal `dotfiles` repository, which may or may not
result in complications I cannot anticipate. I offer no guarantee that the `configurator` script works for you or
results in a pleasant outcome for your computing device, but you are welcome to use it or modify it as you see fit.
Absolutely no refunds will be given, even in cases of catastrophic failure.

## The `update` function

Once everything is installed, you're ready to go. The `update` function is loaded into each Terminal session, and can be
executed to keep everything up to date in one convenient shell command.
