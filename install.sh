#!/bin/bash

DIR=$HOME/.dotfiles

# SYSTEM
rm $HOME/.Xresources
ln -s $DIR/system/Xresources $HOME/.Xresources

# GIT
echo "Creating symlink for GIT in $HOME"

rm $HOME/.gitconfig
ln -s $DIR/git/gitconfig $HOME/.gitconfig

rm $HOME/.gitignore_global
ln -s $DIR/git/gitignore_global $HOME/.gitignore_global

# i3wm
echo "Creating symlink for i3 in $HOME/.config/i3"
rm $HOME/.config/i3/config
ln -s $DIR/i3/config $HOME/.config/i3/config

rm $HOME/.config/i3/i3blocks.conf
ln -s $DIR/i3/i3blocks.conf $HOME/.config/i3/i3blocks.conf
