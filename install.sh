#!/usr/bin/env bash

dotfiles="${HOME}/.dotfiles"
solarized_file="${HOME}/.vim/colors/solarized.vim"

mkdir -p ${HOME}/.vim/colors
mkdir -p ${HOME}/.ssh

if [ ! -f "${solarized_file}" ]; then
    echo "Downloading color scheme"
    wget -O ${solarized_file} https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim
fi

# Change to the dotfiles directory
echo "Changing to the ${dotfiles} directory"
cd ${dotfiles}
echo "...done"

files="bash_profile bashrc bash_prompt aliases vimrc"

for file in ${files}; do
    echo "Creating symlinks..."
    ln -sf ${dotfiles}/.${file} ${HOME}/.${file}
done

ln -fs ${dotfiles}/config ${HOME}/.ssh/

# Download Git Auto-completion
curl "https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash" > ${HOME}/.git-completion.bash
