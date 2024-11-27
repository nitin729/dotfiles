# plugins
#plug "zsh-users/zsh-autosuggestions"
#plug "zap-zsh/supercharge"
#plug "zsh-users/zsh-syntax-highlighting"


# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history 
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

[ -f "$HOME/.config/zsh/aliases.zsh" ] && source "$HOME/.config/zsh/aliases.zsh"
[ -f "$HOME/.config/zsh/exports.zsh" ] && source "$HOME/.config/zsh/exports.zsh"
[ -f "$HOME/.config/zsh/functions.zsh" ] && source "$HOME/.config/zsh/functions.zsh"

#Starship
eval "$(starship init zsh)"

#Zoxide
eval "$(zoxide init zsh)"
# Load and initialise completion system
autoload -Uz compinit
compinit

