
# Preset iTerm2's keymapping with  Natural Text Editing 
if [[ $OSTYPE = (darwin)* ]]; then
bindkey "^[[1;3D" backward-word
bindkey "^[[1;3C" forward-word
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
fi

if [[ $OSTYPE = (linux)* ]]; then
# bindkey "^[b" backward-word
bindkey "∑" forward-word # option(alt)+w
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
fi

# zsh-users/zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

