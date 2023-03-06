#!/bin/bash

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
brew install neovim fd ripgrep
brew install --cask iterm2
brew install lua luarocks
nvim +PlugInstall +qall +silent
nvim +PackerSync +qall +silent
