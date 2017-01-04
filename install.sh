#!/bin/bash

DIR=$HOME/.dotfiles

ask() {
    read -r -p "$1? [y/N] " response
    if [[ $response =~ ^([yY][eE][sS]|[yY]) ]]
    then
        return 0
    fi
    
    return 1
}

if ask 'Create symlink for Xresources'; then ln -fs $DIR/Xresources $HOME/.Xresources; fi

if ask 'Create symlink for Wallpaper'; then ln -fs $DIR/wallpaper.png $HOME/.wallpaper.png; fi

if ask 'Create symlinks for i3wm'; then
	ln -fs $DIR/i3/config $HOME/.config/i3/config;
	ln -fs $DIR/i3/i3blocks.conf $HOME/.config/i3/i3blocks.conf;
fi

if ask 'Create symlinks for Git'; then
	ln -fs $DIR/gitconfig $HOME/.gitconfig;
	ln -fs $DIR/gitignore_global $HOME/.gitignore_global;
fi

if ask 'Create symlinks for Vim'; then
	ln -fs $DIR/vimrc $HOME/.vimrc;
	ln -fs $DIR/vim/plugins.vim $HOME/.vim/plugins.vim;
	ln -fs $DIR/vim/bundle $HOME/.vim/bundle;
fi

