# prompt and verbose
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'

#list
alias ls='ls --color=auto alh'

# git
alias gs="git status"
alias gd="git diff"
alias ga="git add"
alias gc="git commit -m"
alias gp="git pull"
alias gP="git push"

#custom configs
alias config="cd ~/.config/"
alias qtconfig="nvim ~/.config/qtile/config.py"
alias qtcolors="nvim ~/.config/qtile/colors.py"
alias nvconfig="cd ~/.config/nvim; nvim"

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


# paru as aur helper - updates everything
alias upall="paru -Syu"
########################################################

#zsh
alias sz='source ~/.zshrc'
alias zo='nvim ~/.zshrc'
alias za='nvim ~/.config/zsh/aliases.zsh'
alias zp='nvim ~/.config/zsh/prompt.zsh'
# exit
alias :q="exit"
