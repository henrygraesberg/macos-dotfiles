# https://gist.github.com/henrygraesberg/c3b1abcd043b04b28261bcca398c775c
# This file set up the aliases I use for zsh
# add a line that sources this file in the .zshrc file

alias yap="git commit -m"
alias yeet="git push"
alias nrl="nr lint"
alias ..="cd .."
alias :a="temp_root=\$(pwd)"
alias :r="cd \$temp_root"
alias lg="lazygit"
alias restart="source ~/.zshrc"
alias nv="nvim ."
alias .zshrc="nvim ~/.zshrc"
alias aliases="nvim ~/.shell_scripts/aliases.zsh"
alias nvconfig="nvim ~/.config/nvim"
alias ghosttyconf="nvim ~/.config/ghostty/config"
alias vim="nvim"
alias fuzz='fzf --preview="{}"'
alias ip="ifconfig | grep 'inet ' | grep -v '127.0.0.1'"
