alias zshrc="nvim ~/.zshrc"

alias kcf="nvim ~/.config/kitty/kitty.conf"
alias hpc="nvim ~/.config/hypr/hyprland.conf"
alias omp="nvim ~/.config/oh-my-posh/prompt.toml"

alias aliases="nvim ~/.config/zsh/aliases.zsh"
alias zsh-plugins="nvim ~/.config/zsh/plugins"

alias ssh="kitten ssh"

# File System Aliases
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

func -() {
    cd -
}

alias ls="eza --long --color=always --icons=always --group-directories-first"
alias la="eza --long --color=always --icons=always --all --group-directories-first"
alias lt="eza --tree --icons=always"


alias lg="lazygit"

alias nv="nvim" 

alias md="mkdir -pv"

# pacman aliases
alias upgrade="sudo pacman -Syu"
alias install="sudo pacman -S"
alias search="yay -Ss"
alias remove="sudo pacman -R"

# Python Environments
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

# Docker
alias dcu="docker compose up -d"
alias dcd="docker compose down"
alias dcl="docker compose logs"
alias dcp="docker compose pull"

alias cd="z"
