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
declare -a itemsToDelete=(".zshrc" ".gitconfig")

# rm .zshrc, .oh-my-zsh, .gitconfig
# create symlinks
for i in ${itemsToDelete[@]}
do
    rm -rfv $ROOT$i
    ln -sv $SETTINGS$i $ROOT$i
    echo "$i deleted and symlinked"
done


# mv .oh-my-zsh-folder to settings and make symlink
mv -f $ROOT$ZSH $SETTINGS
ln -sv $SETZSH $ROOT$ZSH

echo ".oh-my-zsh dir moved and symlinked"

# symlink to our own repo's custom dir
rm -rfv $SETZSH$CUSTOM
ln -s $SETTINGS$CUSTOM $SETZSH$CUSTOM

echo "successfully linked custom dirs"

# install powerlevel9k now that we have everything set up
echo "installing powerlevel9k …"
git clone https://github.com/bhilburn/powerlevel9k.git $HOME/.oh-my-zsh/custom/themes/powerlevel9k

echo "powerlevel9k installed; fetching powerline fonts"
# install to desktop
git clone https://github.com/gabrielelana/awesome-terminal-fonts.git $HOME/Desktop/awesome-terminal-fonts/

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