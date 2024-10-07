alias zshrc="nvim ~/.zshrc"
alias aliases="nvim /home/abdulkareem/.oh-my-zsh/custom/aliases.zsh"


# File System Aliases
alias ls="exa -lh --group-directories-first"
alias la="exa -Alh --group-directories-first"

alias cat="bat"

alias ..="cd .."
alias ...="cd ../.."

alias mkdir="mkdir -pv"

# pacman aliases
alias upgrade="sudo pacman -Syu"
alias install="sudo pacman -S"
alias search="yay -Ss"
alias remove="sudo pacman -R"

# Python Environments
alias CS50="source /home/abdulkareem/projects/python/CS50/bin/activate"
alias rc="ruff check"
alias rf="ruff format"

# git
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push origin main"
