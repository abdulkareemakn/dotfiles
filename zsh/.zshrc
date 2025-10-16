# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.


nerdfetch

echo -e "\n"

# source /usr/lib/spaceship-prompt/spaceship.zsh

source /usr/share/zsh/themes/powerlevel10k/powerlevel10k.zsh-theme

# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

source "$HOME/.config/zsh/key-bindings.zsh"

fpath+=('/usr/share/zsh/site-functions')
fpath+=("$HOME/.config/zsh/_extract")


source "$HOME/.config/zsh/aliases.zsh"

source "$HOME/.config/zsh/completion.zsh"

source "$HOME/.config/zsh/copyfile.plugin.zsh"
source "$HOME/.config/zsh/extract.plugin.zsh"

# Environment Variables


# Starship Prompt
# export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
# eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"

# eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/amro.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/star.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/catppuccin-mocha.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/catppuccin.omp.json)"

# Thefuck
# eval $(thefuck --alias fml)

# eval "$(atuin init zsh)"

# uv
# eval "$(uv generate-shell-completion zsh)"

# fzf
# source <(fzf --zsh)
if command -v fzf >/dev/null; then
  source /usr/share/fzf/completion.zsh
  source /usr/share/fzf/key-bindings.zsh
fi

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
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=$HISTSIZE
HISTDUP=erase

# History
setopt hist_expire_dups_first 
setopt hist_ignore_dups       
setopt hist_ignore_space      
setopt hist_verify            
setopt share_history          
setopt appendhistory
setopt sharehistory
setopt HIST_SAVE_NO_DUPS
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Function that calls ls everytime cd is run
# cd() {
# 	if [ -z "$1" ]; then
# 	  builtin cd ~
# 	else 
# 	  builtin cd "$1" && lsd --icon=always -lv
# 	fi
# }

# Changes dir if the command is the name of a dir
setopt auto_cd 

mkcd() {
  mkdir -p $argv && z $argv
}

please() {
    sudo $(fc -ln -1)
}

# gcc
# build() {
#     g++ -Wall "$1" -o "${1%.cpp}" && ./"${1%.cpp}"
# }
# compdef '_files -g "*.cpp"' build

music() {
    mpv $(yt-dlp -f bestaudio --get-url "$1")
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh

vidinfo() {
    ffprobe -v error -show_format -show_streams -print_format json "$1" > ~/streaming/metadata & copyfile ~/streaming/metadata
}

metadata() {
    touch ./metadata;
    ffprobe -v error -show_format -show_streams -print_format json "$1" > ./metadata && copyfile ./metadata
}

# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
