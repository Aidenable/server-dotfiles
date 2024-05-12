if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd.mm.yyyy"

plugins=(git tmux history sudo)

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/oh-my-zsh.sh

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias ..="cd ../"
alias cls="clear"
alias q="exit"

alias vvvv="vim"
alias vim="nvim"
alias v="nvim"

alias yi="yay -S"
alias yr="yay -R"
alias pi="sudo pacman -S"
alias pr="sudo pacman -R"
alias pacs="sudo pacman -S"
alias pacr="sudo pacman -R"

alias t="tmux"
alias ss="sudo systemctl"
alias rr="make run"
alias glog="git log --oneline --decorate --graph"

# Enable Alt+Tab keybinding to select from previous commands
bindkey '^[^I' autosuggest-accept

# Alt keybindings in vim mode
bindkey "^[w" forward-word
bindkey "^[b" backward-word

bindkey "^[h" backward-char
bindkey "^[j" down-line-or-history
bindkey "^[k" up-line-or-history
bindkey "^[l" forward-char

bindkey "^[c" kill-whole-line

bindkey "^[[" beginning-of-line

eval "$(starship init zsh)"
# export PATH="$HOME:/.local/bin"
