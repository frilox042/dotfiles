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
ENABLE_CORRECTION="true"
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

# User configuration
export LANG="en_US.UTf-8"
export EDITOR="vim"
export TERMINAL="kitty"
export BROWSER="firefox"
export ARCHFLAGS="-arch x86_64"

# Alias
alias diff='diff --color=auto'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/frilox/google-cloud-sdk/path.zsh.inc' ]; then source '/home/frilox/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/frilox/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/frilox/google-cloud-sdk/completion.zsh.inc'; fi

