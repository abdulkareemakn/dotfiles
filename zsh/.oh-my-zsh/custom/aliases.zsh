alias zshrc="micro ~/.zshrc"

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
alias gst="git status"
alias gad="git add"
alias gc="git commit -m"
alias gp="git push origin main"
