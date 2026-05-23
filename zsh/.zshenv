export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export TERMINAL=kitty
export EDITOR=nvim
export PAGER="bat --plain"

export SSH_AUTH_SOCK="$HOME/.bitwarden-ssh-agent.sock"

export BUN_INSTALL="$HOME/.bun"
export GOPATH="$HOME/go"
export PNPM_HOME="$HOME/.local/share/pnpm"

path=("$HOME/bin" "$HOME/.cargo/bin" "$HOME/.local/bin" "$BUN_INSTALL/bin" "$PNPM_HOME" $path "$HOME/go/bin")

export ELECTRON_OZONE_PLATFORM_HINT=wayland
