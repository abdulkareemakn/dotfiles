export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export TERMINAL=kitty
export EDITOR=nvim

export PATH="$HOME/bin:$PATH"

# uv
export PATH="/home/abdulkareem/.local/bin:$PATH"

# Spicetify
export PATH=$PATH:/home/abdulkareem/.spicetify

# NVM
source /usr/share/nvm/init-nvm.sh

# bun completions
[ -s "/home/abdulkareem/.bun/_bun" ] && source "/home/abdulkareem/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="$PATH:/home/abdulkareem/.local/share/JetBrains/Toolbox/scripts"
