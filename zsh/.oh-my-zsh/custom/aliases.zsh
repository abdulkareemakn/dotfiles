alias zshrc="nvim ~/.zshrc"
alias aliases="nvim /home/abdulkareem/.oh-my-zsh/custom/aliases.zsh"

alias cls="clear"


# File System Aliases
alias ls="eza -lh --group-directories-first --icons=always"
alias la="eza -Alh --group-directories-first --icons=always"

alias ..="cd .."
alias ...="cd ../.."

alias mkdir="mkdir -pv"

# pacman aliases
alias upgrade="sudo pacman -Syu"
alias install="sudo pacman -S"
alias search="yay -Ss"
alias remove="sudo pacman -R"

# yay
alias aurinstall="yay -S"
alias aurupdate="yay"

# Python Environments
alias CS50="cd ~/projects/python/CS50/src; source /home/abdulkareem/projects/python/CS50/bin/activate"
alias school="source /home/abdulkareem/projects/python/school/bin/activate"
alias rc="ruff check"
alias rf="ruff format"

# git
alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit -m"
alias gp="git push origin main"

#emacs
alias emacs="emacs -nw"
alias emacs-nw="emacs"

# gcc
alias build='function _run_cpp() { g++ "$1" -o "${1%.cpp}" && ./"${1%.cpp}"; }; _run_cpp'

# fastfetch
alias iusearchbtw="fastfetch"

