#!/usr/bin/env bash
case "$1" in
dark)
    ln -sf ~/dotfiles/eza/.config/eza/eza-theme-spectrum.yml ~/.config/eza/theme.yml
    ln -sf ~/dotfiles/kitty/.config/kitty/monokai-pro-spectrum.conf ~/.config/kitty/theme.conf
    ln -sf ~/dotfiles/bat/.config/bat/config.dark ~/.config/bat/config
    ln -sf ~/dotfiles/lazygit/.config/lazygit/config-dark.yaml ~/.config/lazygit/config.yaml
    ln -sf ~/.config/nvim/colors/colorscheme-dark.lua ~/.config/nvim/lua/config/colorscheme.lua
    ;;
light)
    ln -sf ~/dotfiles/eza/.config/eza/eza-theme-sun.yml ~/.config/eza/theme.yml
    ln -sf ~/dotfiles/kitty/.config/kitty/monokai-pro-sun.conf ~/.config/kitty/theme.conf
    ln -sf ~/dotfiles/bat/.config/bat/config.light ~/.config/bat/config
    ln -sf ~/dotfiles/lazygit/.config/lazygit/config-light.yaml ~/.config/lazygit/config.yaml
    ln -sf ~/.config/nvim/colors/colorscheme-light.lua ~/.config/nvim/lua/config/colorscheme.lua
    ;;
esac

kitten @ --to unix:/home/tmtaxman/.config/kitty/kitty.sock load
