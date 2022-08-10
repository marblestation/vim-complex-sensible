#!/bin/sh
set -u
set -e

if [ -d "${HOME}/.vim/" ] || [ -f "${HOME}/.vim/vimrc" ] ; then
  echo "There is already a vim configuration in place! You can remove it first with:"
  echo "rm -rf ${HOME}/.vim/ ${HOME}/.vim/vimrc"
  exit 1
fi

set -x
mkdir -p $HOME/.vim/undodir/
mkdir -p $HOME/.vim/autoload/
curl -o $HOME/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -o $HOME/.vim/vimrc https://raw.githubusercontent.com/marblestation/vim-complex-sensible/master/vimrc
vim +"PlugInstall 1" +qall
