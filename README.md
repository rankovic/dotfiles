# .files

Installation:
```
git clone git@github.com:rankovic/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
git submodule init
git submodule update
./install.sh
vim +PlugInstall +qall
sudo apt-get install build-essential cmake python-dev python3-dev
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```
