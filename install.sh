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

if ask 'Create symlink for Xresources'; then ln -fsv $DIR/system/Xresources $HOME/.Xresources; fi

if ask 'Create symlink for Wallpaper'; then ln -fsv $DIR/system/wallpaper.png $HOME/.wallpaper.png; fi

if ask 'Create symlinks for i3wm'; then
	ln -fsv $DIR/i3/config $HOME/.config/i3/config;
	ln -fsv $DIR/i3/i3blocks.conf $HOME/.config/i3/i3blocks.conf;
fi

if ask 'Create symlinks for Git'; then
	ln -fsv $DIR/git/gitconfig $HOME/.gitconfig;
	ln -fsv $DIR/git/gitignore_global $HOME/.gitignore_global;
fi

if ask 'Create symlinks for Vim'; then
	ln -fsv $DIR/vim/vimrc $HOME/.vimrc;
	ln -fsv $DIR/vim/plugins.vim $HOME/.vim/plugins.vim;
	ln -fsv $DIR/vim/bundle $HOME/.vim/bundle;
fi

if ask 'Create symlink for Ctags'; then	ln -fsv $DIR/ctags/ctags $HOME/.ctags; fi
