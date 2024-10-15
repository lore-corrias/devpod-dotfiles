#!/bin/bash
export XDG_CONFIG_HOME="$HOME"/.config

ln -s "$PWD"/nix/.config/nixpkgs/ "$XDG_CONFIG_HOME"/nixpkgs

# Installing packages with nix
nix-env -iA nixpkgs.myPackages

# Restow'ing dotfiles
stow --verbose --target="$HOME" --restow */

# mkdir -p "$XDG_CONFIG_HOME"/nixpkgs
# ln -sf "$PWD/config.nix" "$XDG_CONFIG_HOME"/nixpkgs/config.nix

# ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME/nvim"

# ln -sf "$PWD/.zshenv" "$HOME/.zshenv"
# ln -sf "$PWD/zsh" "$XDG_CONFIG_HOME/zsh"
