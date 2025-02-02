#!/usr/bin/env bash

sudo pacman -S --needed --noconfirm zsh kitty neovim zoxide uv fzf thefuck starship yazi go rustup fd ripgrep lazygit jq poppler zsh-syntax-highlighting zsh-autosuggestions zsh-completions ttf-cascadia-code-nerd ttf-firacode-nerd ttf-jetbrains-mono-nerd

paru -S --needed --noconfirm zsh-theme-powerlevel10k-git zsh-you-should-use

chsh -s $(which zsh)
