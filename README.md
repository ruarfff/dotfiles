# dotfiles

These are my dotfiles which I used across multiple environments including Mac, Windows (with wsl) and in GitHub CodeSpaces.

# Setup

This repo uses [Dotbot](https://github.com/anishathalye/dotbot).

If you want to make a setup like this for yourself consult the [getting started guide for Dotbot](https://github.com/anishathalye/dotbot#getting-started).

Assuming you want to add these dotfiles to a system that does not already have Dotbot setup, follow these instructions.


Go to your home directory:

`cd ~`

Pull down this repo to a directory called `.dotfiles`.

`git clone git@github.com:ruarfff/dotfiles.git .dotfiles`

Look at the [install config](https://github.com/ruarfff/dotfiles/blob/main/install.conf.yaml). If the config references any file that already exists on your system, rename that file on your system for the moment. For example, if you have a file `~/.zshrc`, rename it to something like `~/bu.zshrc`.

In the `~/.dotfiles` directory, run `./install`. This will create symlinks to all the files referenced in the [install config](https://github.com/ruarfff/dotfiles/blob/main/install.conf.yaml). Now your dotfiles are a simple git repository and the files are put on your system with symlinks to keep things clean and avoid any weird git setup in your home directory like I used to have with [my-dev-env](https://github.com/ruarfff/my-dev-env).

If you backed up some filed previously, copy in whatever you need into the `.dotfiles`.

# Remove a file

Simply delete the entry in the `install.conf.yaml` and delete the file from the repo. Commit and push the change.

# Add a file

Add a file to the repo. Add an entry to `install.conf.yaml`. Run `~/.dotfiles/install` to setup the symlink. Commit and push the change.

# Updating a file

Update the file as normal using either the symlink or directly in the `.dotfiles` directory. Commit and push the change.

# Dependencies

At a minimum you need [zsh](http://zsh.sourceforge.net/Doc/Release/zsh_toc.html) and the accompanying framework [oh my zsh](https://ohmyz.sh/). I do not use bash directly in this setup.

There are a bunch of other tools referenced in this setup but the source of truth for that in the dotfiles rather than this readme. This setup will mostly work even if none of those tools are installed but the aliases will likely cause issues.

Here is a list at the time of writing:

- [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- [vscode](https://code.visualstudio.com/)
- [pyenv](https://github.com/pyenv/pyenv)
- [sdkman](https://sdkman.io/)
- [flutter](https://flutter.dev/)
- [starship](https://starship.rs/)

