# Zsh
export ZSH=$HOME/.oh-my-zsh

# Path
export PYTHONPATH=$PYTHONPATH
export PATH=$PATH:$HOME/.gem/ruby/2.4.0/bin/:$HOME/.local/bin

# Theme
ZSH_THEME="agnoster"

# Zsh common configuration
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Plugins
plugins=(git, python)

# Oh-My-Zsh
source $ZSH/oh-my-zsh.sh

# User configuration
export LANG=fr_FR.UTF-8
export EDITOR='vim'
export ARCHFLAGS="-arch x86_64"

#Term
export TERM='rxvt-unicode'
export COLORTERM='rxvt-unicode-256color'

# Alias
alias diff='diff --color=auto'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/frilox/google-cloud-sdk/path.zsh.inc' ]; then source '/home/frilox/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/frilox/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/frilox/google-cloud-sdk/completion.zsh.inc'; fi
