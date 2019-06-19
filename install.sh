#!/usr/bin/env bash

dotfiles="${HOME}/.dotfiles"
badwolf_file="${HOME}/.vim/colors/badwolf.vim"

mkdir -p ${HOME}/.vim/colors
mkdir -p ${HOME}/.ssh

if [ ! -f "${badwolf_file}" ]; then
    echo "Downloading badwolf color scheme"
    wget -O ${badwolf_file} https://raw.githubusercontent.com/sjl/badwolf/master/colors/badwolf.vim
fi

echo "Creating symlinks..."

ln -fs ${dotfiles}/.vimrc ${HOME}
ln -fs ${dotfiles}/.tmux.conf ${HOME}
ln -fs ${dotfiles}/config ${HOME}/.ssh/
