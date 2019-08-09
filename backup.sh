#!/bin/bash

# check, if the config directoy exists - create it, if it does not yet exist
mkdir config/ 2>/dev/null

# i3
cp -r $HOME/.i3 ./i3

# neovim
cp -r $HOME/.config/nvim ./config/

# zsh
cp $HOME/.zshrc ./zshrc

