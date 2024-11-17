# prompt and verbose
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias cat='bat --theme=everforest --style='numbers,changes,grid,auto,header,header-filename,header-filesize,snip''
alias bat='bat --theme=everforest --style='numbers,changes,grid,auto,header,header-filename,header-filesize,snip''
#dev
alias vs='vscodium'

#list
alias ls='ls -lah --color=auto'

#ssh

# git
alias gs="git status"
alias gd="git diff"
alias ga="git add"
alias gc="git commit -m"
alias gp="git pull"
alias gP="git push"

#custom configs
alias vim='nvim'
alias cfg="cd ~/.config/"
alias qtconfig="nvim ~/.config/qtile/config.py || nvim ~/dotfiles/qtile/config.py"
alias qtcolors="nvim ~/.config/qtile/colors.py"
alias nvconfig="cd ~/.config/nvim; nvim"
alias hc="nvim ~/.config/hypr/hyprland.conf"
alias wbc="nvim ~/.config/waybar/config.jsonc"
alias wbs="nvim ~/.config/waybar/style.css"


#arch specific
########################################################
# pacman
alias pacman="sudo pacman --color auto"
alias update="sudo pacman -Syyu"
alias sps='sudo pacman -S'
alias spr='sudo pacman -R'
alias sprs='sudo pacman -Rs'
alias sprdd='sudo pacman -Rdd'
alias spqo='sudo pacman -Qo'
alias spsii='sudo pacman -Sii'
alias pacreset='sudo rm /var/lib/pacman/db.lck'

# paru as aur helper - updates everything
alias yay="paru"
alias upall="paru -Syu"
########################################################

#zsh
alias sz='source ~/.zshrc'
alias zo='nvim ~/.zshrc'
alias za='nvim ~/.config/zsh/aliases.zsh'
alias zp='nvim ~/.config/zsh/prompt.zsh'
# exit
alias :q="exit"
