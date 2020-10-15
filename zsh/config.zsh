
# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=$HISTSIZE

setopt append_history           # Dont overwrite history
setopt extended_history         # Also record time and duration of commands.
setopt share_history            # Share history between multiple shells
setopt hist_expire_dups_first   # Clear duplicates when trimming internal hist.
setopt hist_find_no_dups        # Dont display duplicates during searches.
setopt hist_ignore_dups         # Ignore consecutive duplicates.
setopt hist_ignore_all_dups     # Remember only one unique copy of the command.
setopt hist_reduce_blanks       # Remove superfluous blanks.
setopt hist_save_no_dups        # Omit older commands in favor of newer ones.

export GOPATH=$HOME/go
export GOPROXY=https://proxy.golang.org
[[ -d ~/go/bin ]] && export PATH=~/go/bin:$PATH
[[ -d ~/bin ]] && export PATH=~/bin:$PATH
[[ -f ~/.proxy ]] && source ~/.proxy

if [[ $OSTYPE = (linux)* ]]; then
  [[ -f /home/linuxbrew/.linuxbrew/bin/brew ]] && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
  [[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
  [[ -f ~/bin/dpp4 ]] && source ~/bin/dpp4
  PATH=/snap/bin:$PATH
fi

[[ -f ~/.gvm/scripts/gvm ]] && source ~/.gvm/scripts/gvm

export no_proxy=localhost,127.0.0.1
