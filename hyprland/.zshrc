# plugins
#plug "zsh-users/zsh-autosuggestions"
#plug "zap-zsh/supercharge"
#plug "zsh-users/zsh-syntax-highlighting"

#Starship
eval "$(starship init zsh)"

# Load and initialise completion system
autoload -Uz compinit
compinit
