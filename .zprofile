# Default programs:
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
export READER="zathura"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export WINEPREFIX="${XDG_DATA_HOME:-$HOME/.local/share}/wineprefixes/default"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export ANSIBLE_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/ansible/ansible.cfg"
export MPLAYER_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/mplayer"
export LESSHISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/less/history"
export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/zsh/history"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

# Python
export PYTHONSTARTUP="${XDG_CONFIG_HOME:-$HOME/.config}/python/pythonrc.py"
export PYLINTHOME="${XDG_CACHE_HOME:-$HOME/.cache}/pylint"
export PYTHONPATH=$PYTHONPATH

# Node
export NVM_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/nvm"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/npm/npmrc"
export NODE_REPL_HISTORY="${XDG_DATA_HOME:-$HOME/.local/share}/node_repl_history"

# Other program settings:
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
export _JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="${XDG_CONFIG_HOME:-$HOME/.config}/java"
export ARCHFLAGS="-arch x86_64"
export MOZ_ENABLE_WAYLAND=1
export NVM_COMPLETION=true
export NVM_LAZY_LOAD=true
export _Z_DATA="${XDG_DATA_HOME:-$HOME/.local/share}/.z"


# Path
# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
# Yarn
export PATH="$(yarn global bin):$PATH"

# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
    exec sway
fi
