#!/usr/bin/env bash

dotfiles="${HOME}/.dotfiles"
solarized_file="${HOME}/.vim/colors/solarized.vim"

mkdir -p ${HOME}/.vim/colors
mkdir -p ${HOME}/.ssh

if [ ! -f "${solarized_file}" ]; then
    echo "Downloading color scheme"
    wget -O ${solarized_file} https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim
fi

echo "Creating symlinks..."

ln -fs ${dotfiles}/.vimrc ${HOME}
ln -fs ${dotfiles}/.tmux.conf ${HOME}
ln -fs ${dotfiles}/config ${HOME}/.ssh/
