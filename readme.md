# Thomas' settings repository

This is a repository for storing `.gitconfig` and Oh My Zsh-related settings for easier management across devices.

## Structure

The root contains `.gitconfig`, `.oh-my-zsh` and `custom`.

### `custom`

A modular management system for shared and OS-specific aliases, functions, etc. Place new entries where they are the most appropriate.

Files are currently split between different operating systems, but it might be a good idea to place all aliases in one file, and the check the `$OSTYPE` within and determine which command to run based on that.

## Reminders to myself

Remember to set symlinks pointing to this directory from your home folder (assuming the repo exists in the home folder):

`ln -s ~/.settings/.gitconfig ~/.gitconfig`\
`ln -s ~/.settings/.oh-my-zsh ~/.oh-my-zsh`\
`ln -s ~/.settings/.zshrc ~/.zshrc`\

Also, you'll probably have to set the symlinks within `.oh-my-zsh` to point to the root `custom` directory:\
`ln -s ~/.settings/custom/ ~/.settings/.oh-my-zsh/custom`

You might need to remove the actual `.oh-my-zsh/custom/` directory first, in which case:\
`rm -r ~/.settings/.oh-my-zsh/custom`