alias zshrc="nvim ~/.zshrc"

alias kitty-config="nvim ~/.config/kitty/kitty.conf"
alias ssp="nvim ~/.config/starship/starship.toml"
alias hpc="nvim ~/.config/hypr/hyprland.conf"
alias i3c="nvim ~/.config/i3/config"
alias sc="nvim ~/.config/sway/config"
alias omp="nvim ~/.config/oh-my-posh/prompt.toml"

alias aliases="nvim ~/.config/zsh/aliases.zsh"
alias zsh-plugins="nvim ~/.config/zsh/plugins"

alias ssh="kitten ssh"
# alias antiload=antidote bundle <~/.config/zsh/plugin >~/.config/zsh/plugins/.zsh_plugins.zsh

# File System Aliases

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

func -() {
    cd -
}

alias ls="lsd --icon=always --group-directories-first -l"
alias la="lsd --icon=always --group-directories-first -lA"

alias lg="lazygit"

alias cls="clear"

alias nv="nvim" 

alias md="mkdir -pv"

# pacman aliases
alias upgrade="sudo pacman -Syu"
alias install="sudo pacman -S"
alias search="yay -Ss"
alias remove="sudo pacman -R"

# yay
alias aurinstall="yay -S"
alias aurupdate="yay"

# Python Environments
alias cs50="cd /home/abdulkareem/projects/python/CS50P/src/project/; source /home/abdulkareem/projects/python/CS50P/.venv/bin/activate"
alias school="source /home/abdulkareem/projects/python/school/bin/activate"
alias rc="ruff check"
alias rf="ruff format"

# git
alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit -m"
alias gp="git push origin main"

# fastfetch
alias iusearchbtw="fastfetch"

# CS50x
alias make50='make -s CC=clang CFLAGS="-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow" LDLIBS="-lcrypt -lcs50 -lm"'

alias x="cd /home/abdulkareem/projects/CS50x/"

# 100 days
alias 100="cd /home/abdulkareem/projects/python/100-days-of-code/; source /home/abdulkareem/projects/python/100-days-of-code/.venv/bin/activate"

# Docker
alias dcu="docker compose up -d"
alias dcd="docker compose down"
alias dcl="docker compose logs"
alias dcp="docker compose pull"

alias yay="paru"
