#!/bin/bash

# script to set up configuration of my terminal environment
# delete files, create symlinks etc

# make the script exit if any of the commands fail
set -e

ROOT="$HOME/"
SETTINGS="$ROOT.settings/"
CUSTOM="custom/"
ZSH=".oh-my.zsh/"
THIS=".config.sh"
SETZSH=$SETTINGS$ZSH
declare -a items=(".zshrc" ".oh-my-zsh" ".gitconfig")

# rm .zshrc, .oh-my-zsh, .gitconfig
# create symlinks
for i in ${items[@]}
do
    echo "deleting"
    rm -rfv $ROOT$i

    echo "creating symlink for"
    ln -sv $SETTINGS$i $ROOT$i
done


# symlink to our own repo's custom dir
rm -rfv $SETZSH$CUSTOM
ln -s $SETTINGS$CUSTOM $SETZSH$CUSTOM

# install powerlevel9k now that we have everything set up
echo "installing powerlevel9k …"
git clone https://github.com/bhilburn/powerlevel9k.git $HOME/.oh-my-zsh/custom/themes/powerlevel9k

echo "powerlevel9k installed; fetching powerline fonts"
# install to desktop
git clone https://github.com/gabrielelana/awesome-terminal-fonts.git "$HOME/Desktop"

echo "got fonts"
echo "see https://github.com/gabrielelana/awesome-terminal-fonts for installation instructions"

echo "Opening webpage for monoid download"

case $OSTYPE in
    darwin*)
    open http://larsenwork.com/monoid/#
    ;;
    linux*)
    xdg-open http://larsenwork.com/monoid/#
    ;;
esac

echo "configuration complete. this script will now be deleted"

# delete setup file
rm -v $SETTINGS$THIS

echo "config script deleted."

# delete initialization script (if it exists)
rm -v "$SETTINGS.initialize.sh"

echo "deleted initialization script"