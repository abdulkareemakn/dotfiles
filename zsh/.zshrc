# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Antigen
source /home/abdulkareem/antigen.zsh

# Loading oh-my-zsh
antigen use oh-my-zsh

# Bundles from the default repo
antigen bundle command-not-found

# Syntax Highlighting, Completions and Autocomplete
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

antigen theme romkatv/powerlevel10k


antigen apply


# Environment Variables
export TERMINAL=wezterm
export EDITOR=nvim

# Starship Prompt
eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"

# Thefuck
eval $(thefuck --alias FUCK)

# Spicetify
export PATH=$PATH:/home/abdulkareem/.spicetify

# NVM
source /usr/share/nvm/init-nvm.sh

# uv
eval "$(uv generate-shell-completion zsh)"

# yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# History Setup
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS

# File System Aliases
alias ls="lsd --icon=always -l"
alias la="lsd -A --icon=always -l"

# Function that calls ls everytime cd is run
cd() {
	if [ -z "$1" ]; then
	  builtin cd ~
	else 
	  builtin cd "$1" && lsd --icon=always -l
	fi
}

# Function that automatically changes into the newly created directory
mkcd() {
    mkdir -p "$1" && cd "$1"
}


# Aliases
alias zshrc="nvim ~/.zshrc"

alias cls="clear"


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

# gcc
build() {
    g++ -Wall "$1" -o "${1%.cpp}" && ./"${1%.cpp}"
}
compdef '_files -g "*.cpp"' build

# fastfetch
alias iusearchbtw="fastfetch"

please() {
    sudo $(fc -ln -1)
}

# CS50x
alias make50='make -s CC=clang CFLAGS="-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow" LDLIBS="-lcrypt -lcs50 -lm"'

alias x="cd /home/abdulkareem/projects/CS50x/"

# 100 days
alias 100="cd /home/abdulkareem/projects/python/100-days-of-code/; source /home/abdulkareem/projects/python/100-days-of-code/.venv/bin/activate"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
