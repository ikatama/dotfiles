#!/bin/bash

if type "brew" > /dev/null 2>&1; then
    echo "Homebrew is already installed"
else
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    brew install fd
    brew install exa
    brew install bat
    brew install docker
    brew install git
    brew install neovim
fi

DOTFILE="$HOME/dotfiles"
ln -sf $DOTFILE/vim/.vimrc ~/.config/nvim/init.sh
ln -sf $DOTFILE/bash/.bashrc ~/.bashrc
ln -sf $DOTFILE/bash/.bash_profile ~/.bash_profile

echo "Completed!"

