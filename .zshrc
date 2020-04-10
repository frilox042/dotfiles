# Zsh
export ZSH=$HOME/.oh-my-zsh

# Path
# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
# Python
export PYTHONPATH=$PYTHONPATH
# Yarn
export PATH="$(yarn global bin):$PATH"

# Theme
ZSH_THEME="agnoster"

# Zsh common configuration
COMPLETION_WAITING_DOTS="true"
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -U up-line-or-beggining-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Plugins
plugins=(git python tmux gatsby yarn)

# Oh-My-Zsh
source $ZSH/oh-my-zsh.sh
kitty + complete setup zsh | source /dev/stdin

# User configuration
export EDITOR="vim"
export TERMINAL="kitty"
export BROWSER="firefox"
export ARCHFLAGS="-arch x86_64"
export MOZ_ENABLE_WAYLAND=1

# Alias
alias diff="diff --color=auto"
