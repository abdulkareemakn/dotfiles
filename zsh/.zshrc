# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Antidote
source '/usr/share/zsh-antidote/antidote.zsh'

antidote load ~/.config/zsh/plugins

# Environment Variables
export TERMINAL=kitty
export EDITOR=nvim

if [ -f ~/.config/zsh/aliases.zsh ]; then
    source ~/.config/zsh/aliases.zsh
fi

# Starship Prompt
# eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"

# Thefuck
eval $(thefuck --alias fml)

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
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt HIST_SAVE_NO_DUPS
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups


# Function that calls ls everytime cd is run
cd() {
	if [ -z "$1" ]; then
	  builtin cd ~
	else 
	  builtin cd "$1" && lsd --icon=always -lv
	fi
}

mkcd() {
  mkdir -p $argv && cd $argv
}

please() {
    sudo $(fc -ln -1)
}

# gcc
build() {
    g++ -Wall "$1" -o "${1%.cpp}" && ./"${1%.cpp}"
}
compdef '_files -g "*.cpp"' build

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
