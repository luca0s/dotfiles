# Set the directory we want to store pure and plugins
PURE_HOME="${HOME}/.zsh/pure"

# # Download Pure, if it's not there yet
# if [ ! -d "$PURE_HOME" ]; then
#    mkdir -p "$(dirname $PURE_HOME)"
#    git clone https://github.com/sindresorhus/pure.git "$PURE_HOME"
# fi

# # Load Pure Prompt
# fpath+=($PURE_HOME)

# autoload -U promptinit; promptinit
# prompt pure

# # Set Pure Prompt colors
# zstyle :prompt:pure:path color '#6e94b2'
# zstyle ":prompt:pure:prompt:*" color '#606079'
# zstyle :prompt:pure:prompt:error color '#df6882'
# zstyle :prompt:pure:prompt:success color '#405065'
# zstyle :prompt:pure:git:branch color '#aeaed1'
# zstyle :prompt:pure:git:dirty color '#c3c3d5'
# zstyle :prompt:pure:git:execution_time color '#e8b589'
# zstyle :prompt:pure:git:action color '#90a0b5'
# zstyle :prompt:pure:git:arrow color '#90a0b5'
# zstyle :prompt:pure:git:stash color '#90a0b5'

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions

# Set syntax highlight colors
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=cyan,underline
ZSH_HIGHLIGHT_STYLES[precommand]=fg=cyan,underline
ZSH_HIGHLIGHT_STYLES[arg0]=fg=cyan

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey -s '^o' "sessionizer\n"

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Aliases
alias ls="ls --color"
alias cls="clear"
alias vim="nvim"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Shell integrations
eval "$(starship init zsh)"
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

export EDITOR="nvim"

export PATH=$PATH:~/.cargo/bin:~/.scripts
export PATH="/home/luca/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/luca/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
