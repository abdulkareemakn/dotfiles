copybuffer () {
    printf "%s" "$BUFFER" | wl-copy
}

zle -N copybuffer

bindkey -M viins "^O" copybuffer
bindkey -M vicmd "^O" copybuffer
bindkey -M emacs "^O" copybuffer
