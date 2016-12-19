#!/bin/bash

DIR=$HOME/.dotfiles

# SYSTEM
if [ -f $HOME/.Xresources ]; then
    rm  $HOME/.Xresources
fi
ln -s $DIR/system/Xresources $HOME/.Xresources

if [ -f $HOME/.wallpaper.png ]; then
    rm $HOME/.wallpaper.png
fi
ln -s $DIR/system/wallpaper.png $HOME/.wallpaper.png

# GIT
echo "Creating symlink for GIT in $HOME"

if [ -f $HOME/.gitconfig ]; then
    rm $HOME/.gitconfig
fi
ln -s $DIR/git/gitconfig $HOME/.gitconfig

if [ -f $HOME/.gitignore_global ]; then
    rm $HOME/.gitignore_global
fi
ln -s $DIR/git/gitignore_global $HOME/.gitignore_global

# i3WM
echo "Creating symlink for i3 in $HOME/.config/i3"
if [ -f $HOME/.config/i3/config ]; then
    rm $HOME/.config/i3/config
fi
ln -s $DIR/i3/config $HOME/.config/i3/config

if [ -f $HOME/.config/i3/i3blocks.conf ]; then
    rm $HOME/.config/i3/i3blocks.conf
fi
ln -s $DIR/i3/i3blocks.conf $HOME/.config/i3/i3blocks.conf

# VIM
echo "Creating symlink for VIM in $HOME"
if [ -f $HOME/.vimrc ]; then
    rm $HOME/.vimrc
fi
ln -s $DIR/vim/vimrc $HOME/.vimrc
