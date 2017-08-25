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

if ask 'Create symlinks for Git'; then
	ln -fsv $DIR/git/gitconfig $HOME/.gitconfig;
	ln -fsv $DIR/git/gitignore_global $HOME/.gitignore_global;
fi

if ask 'Create symlinks for Vim'; then
	ln -fsv $DIR/vim/vimrc $HOME/.vimrc;
	ln -fsv $DIR/vim $HOME/.vim;
fi

if ask 'Create symlink for Ctags'; then	ln -fsv $DIR/ctags/ctags $HOME/.ctags; fi
