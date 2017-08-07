SRC := $(pwd)

all: vim git ctags
	
vim:
	# VIM
	ln -fsv $(SRC)/vim/vim ${HOME}/.vimrc 
	ln -fsv $(SRC)/vim ${HOME}/.vim

git:
	ln -fsv $(SRC)/git/gitconfig ${HOME}/.gitconfig
	ln -fsv $(SRC)/git/gitignore_global ${HOME}/.gitignore_global
	

ctags:
	ln -fsv $(SRC)/ctags/ctags ${HOME}/.ctags
	

