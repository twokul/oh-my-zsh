# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="alex"

plugins=(git history tmux z)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/local/heroku/bin:/usr/local/share/npm/bin:/Users/alex/.dotfiles/bin:/Users/alex/.dotfiles/zsh/function:/Users/alex/.rbenv/shims:/Users/alex/.rbenv/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/heroku/bin:/usr/local/share/npm/bin:/Users/alex/.oh-my-zsh/bin:/Users/alex/.oh-my-zsh/functions:/Users/alex/.rbenv/shims:/Users/alex/.rbenv/bin:/Users/alex/bin/FDK/Tools/osx:/Users/alex/bin/FDK/Tools/osx"

# Terminal aliases

alias reload!='. ~/.zshrc'
alias md='mkdir'
alias ..='cd ..'
alias server='srvr'
alias l='ls -l'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias tls='tmux list-sessions'
alias tns='tmux new-session -s'
alias ta='tmux a -t'

# Completion

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# Custom prompt

export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

# fpath=($ZSH/zsh/functions $fpath)

# autoload -U $ZSH/zsh/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

zle -N newtab

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char
bindkey '^R' history-incremental-search-backward

# Preferred editor for local and remote sessions
export EDITOR='vim'
