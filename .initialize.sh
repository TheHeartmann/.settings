#!/bin/bash

# script to install git, zsh, and clone https://github.com/TheHeartmann/.settings.git
# to prepare for further install

# make the script exit if any of the commands fail
set -e

OS=$OSTYPE
SETTINGS=$HOME/.settings

# install git
echo "installing git (and curl and zsh)"
case $OS in
    darwin*)
    brew install git # assuming we have homebrew. Apparently, just "git" will also work
    ;;
    linux*)
    sudo apt-get install git-all
    sudo apt-get install curl
    sudo apt install zsh
    ;;
esac
echo "git succesfully installed"

# install zsh
echo "installing .oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo ".oh-my-zsh installed"

# clone repo
echo "cloning settings repo …"
git clone https://github.com/TheHeartmann/.settings.git "$HOME/.settings"
echo "got settings"

echo "finished installation of git and oh-my-zsh"
echo "installing terminal replacement"

case $OS in
    darwin*)
    # install iTerm2
    brew cask install iterm2
    curl -L https://iterm2.com/misc/install_shell_integration.sh | bash
    ;;
    linux*)
    # install guake
    sudo apt-get install python-dbus
    sudo apt-get install guake
    cp /usr/share/applications/guake.desktop /etc/xdg/autostart/
    ;;
esac

echo "succesfully installed terminal replacement"

# make sure we have permission to run the next script:
echo "unlocking other script and starting configuration"

sudo chmod -R 777 $SETTINGS

$SETTINGS/.config.sh
# run other script

# delete this script
# echo "this script has run its course and will now be deleted"

# rm -v ./initialize.sh

echo "\n\n\ninstallation completed\n\n\n"