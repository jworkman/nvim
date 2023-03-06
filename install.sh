#!/bin/bash

brew install neovim fd ripgrep
brew install --cask iterm2
brew install lua
nvm +PlugInstall +qall +silent
nvm +PackerSync +qall +silent
