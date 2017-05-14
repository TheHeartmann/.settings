# Thomas' settings repository

This is a repository for storing `.gitconfig` and Oh My Zsh-related settings for easier management across multiple devices and operating systems.

## Structure

The root contains `.gitconfig`, `.oh-my-zsh` and `custom`, as well as a couple scripts

### `custom/`

A modular management system for shared and OS-specific aliases, functions, etc. Place new entries where they are the most appropriate.

Files are currently split between different operating systems, but it might be a good idea to place all aliases in one file, and the check the `$OSTYPE` within and determine which command to run based on that.

## Usage

Running `.config.sh` should move all folders and set up symbolic links automatically, but assumes you have git and OMZ installed.

Running `.initialize.sh` will install git, OMZ and Guake/iTerm2 (OS-dependent; assumes homebrew has already been installed for macOS), and then start the configuration process found in `.config.sh`

Both scripts will terminate themselves on success.