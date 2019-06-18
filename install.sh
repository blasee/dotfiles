#!/usr/bin/env bash

dotfiles="${HOME}/.dotfiles"
badwolf_file="${HOME}/.vim/colors/badwolf.vim"

mkdir -p ${HOME}/.vim/colors

if [ ! -f "${badwolf_file}" ]; then
    echo "Downloading badwolf color scheme"
    wget -O ${badwolf_file} https://raw.githubusercontent.com/sjl/badwolf/master/colors/badwolf.vim
fi

echo "Creating symlinks...\n"

echo "- vimrc\n"
ln -fs ${dotfiles}/.vimrc ${HOME}

