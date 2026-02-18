nerdfetch

echo -e "\n"

source "$HOME/.config/zsh/key-bindings.zsh"

fpath+=("$HOME/.config/zsh/_extract")


source "$HOME/.config/zsh/aliases.zsh"

source "$HOME/.config/zsh/completion.zsh"

source "$HOME/.config/zsh/copyfile.plugin.zsh"
source "$HOME/.config/zsh/extract.plugin.zsh"
source "$HOME/.config/zsh/fzf-tab/fzf-tab.plugin.zsh"

# Environment Variables

autoload -U compinit && compinit

bindkey -e

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no

# Starship Prompt
# export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
# eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"

eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/prompt.omp.toml)"

# # Redraw prompt function
# redraw-prompt() {
#   _omp_precmd
#   zle .reset-prompt
# }
# # Vi mode state functions
# vimode-cmd() {
#   export VI_MODE="N"
#   redraw-prompt
# }
# vimode-insert() {
#   export VI_MODE="I"
#   redraw-prompt
# }
# vimode-visual() {
#   export VI_MODE="V"
#   redraw-prompt
# }
# vimode-visual-line() {
#   export VI_MODE="V-L"
#   redraw-prompt
# }
# vimode-replace() {
#   export VI_MODE="R"
#   redraw-prompt
# }
# # CMD/Normal mode
# _omp_create_widget vi-cmd-mode vimode-cmd
# _omp_create_widget deactivate-region vimode-cmd
# # Insert mode
# _omp_create_widget vi-insert vimode-insert
# _omp_create_widget vi-insert-bol vimode-insert
# _omp_create_widget vi-add-eol vimode-insert
# _omp_create_widget vi-add-next vimode-insert
# _omp_create_widget vi-change vimode-insert
# _omp_create_widget vi-change-eol vimode-insert
# _omp_create_widget vi-change-whole-line vimode-insert
# _omp_create_widget vi-open-line-above vimode-insert
# _omp_create_widget vi-open-line-below vimode-insert
# # Replace mode
# _omp_create_widget vi-replace vimode-replace
# _omp_create_widget vi-replace-chars vimode-replace
# # Visual mode
# _omp_create_widget visual-mode vimode-visual
# _omp_create_widget visual-line-mode vimode-visual-line
# # Reset to default mode at the end of line input reading
# line-finish() {
#     export VI_MODE="I"
# }
# _omp_create_widget zle-line-finish line-finish
# # Fix a bug when you C-c in CMD mode, you'd be prompted with CMD mode indicator
# # while in fact you would be in INS mode.
# # Fixed by catching SIGINT (C-c), set mode to INS and repropagate the SIGINT,
# # so if anything else depends on it, we will not break it.
# TRAPINT() {
#   vimode-insert
#   return $(( 128 + $1 ))
# }
# # Initialize to insert mode
# export VI_MODE="I"

# uv
# eval "$(uv generate-shell-completion zsh)"

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

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh

metadata() {
    touch ./metadata;
    ffprobe -v error -show_format -show_streams -print_format json "$1" > ./metadata && copyfile ./metadata
}

# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none \
  --color=bg+:#283457 \
  --color=bg:#16161e \
  --color=border:#27a1b9 \
  --color=fg:#c0caf5 \
  --color=gutter:#16161e \
  --color=header:#ff9e64 \
  --color=hl+:#2ac3de \
  --color=hl:#2ac3de \
  --color=info:#545c7e \
  --color=marker:#ff007c \
  --color=pointer:#ff007c \
  --color=prompt:#2ac3de \
  --color=query:#c0caf5:regular \
  --color=scrollbar:#27a1b9 \
  --color=separator:#ff9e64 \
  --color=spinner:#ff007c \
"

source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
