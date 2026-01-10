export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export TERMINAL=kitty
export EDITOR=nvim

export PATH="$HOME/bin:$PATH"

export SSH_AUTH_SOCK="$HOME/.bitwarden-ssh-agent.sock"

# uv
export PATH="/home/tmtaxman/.local/bin:$PATH"

# bun completions
[ -s "/home/abdulkareem/.bun/_bun" ] && source "/home/abdulkareem/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="$PATH:/home/tmtaxman/go/bin"


export GOPATH="$HOME/go"

export ELECTRON_OZONE_PLATFORM_HINT=wayland

# uv
export PATH="/home/tmtaxman/.local/share/../bin:$PATH"
