# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

nerdfetch

echo -e "\n"

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source "$HOME/.config/zsh/key-bindings.zsh"

fpath+=('/usr/share/zsh/site-functions')
fpath+=("$HOME/.config/zsh/_extract")


source "$HOME/.config/zsh/options.zsh"
source "$HOME/.config/zsh/history.zsh"
source "$HOME/.config/zsh/aliases.zsh"

source "$HOME/.config/zsh/completion.zsh"

source "$HOME/.config/zsh/copyfile.plugin.zsh"
source "$HOME/.config/zsh/extract.plugin.zsh"

# Environment Variables


# Starship Prompt
# eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"

# Thefuck
eval $(thefuck --alias fml)

# uv
eval "$(uv generate-shell-completion zsh)"

# fzf
source <(fzf --zsh)

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

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
