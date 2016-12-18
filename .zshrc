# Zsh
export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="agnoster"

# Zsh common configuration
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(git, python)

# Oh-My-Zsh
source $ZSH/oh-my-zsh.sh

# User configuration
export LANG=fr_FR.UTF-8
export EDITOR='vim'
export ARCHFLAGS="-arch x86_64"
