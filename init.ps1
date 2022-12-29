# Symbolic Linkの作成
New-Item -Value "$HOME/dotfiles/vim/.vimrc" -Path "$HOME" -Name ".vimrc" -ItemType SymbolicLink -Force
New-Item -Value "$HOME/dotfiles/bash/.bash_profile" -Path "$HOME" -Name ".bash_profile" -ItemType SymbolicLink -Force
New-Item -Value "$HOME/dotfiles/bash/.bashrc" -Path "$HOME" -Name ".bashrc" -ItemType SymbolicLink -Force
New-Item -Value "$HOME/dotfiles/.gitconfig" -Path "$HOME" -Name ".gitconfig" -ItemType SymbolicLink -Force

