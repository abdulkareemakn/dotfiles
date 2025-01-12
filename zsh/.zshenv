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
