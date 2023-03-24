# Default programs:
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
export READER="zathura"

# ~/ Clean-up:
export XDG_SESSION_TYPE="wayland"
export XDG_CURRENT_DESKTOP="sway"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
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

# Node
export NVM_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/nvm"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/npm/npmrc"
export NODE_REPL_HISTORY="${XDG_DATA_HOME:-$HOME/.local/share}/node_repl_history"

# OpenScad NopSCADlib
export PATH="$XDG_DATA_HOME/OpenSCAD/libraries/NopSCADlib/scripts:$PATH"

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
export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"
# Yarn
export PATH="$(yarn global bin):$PATH"

export $(systemctl --user show-environment)

# If running from tty1 start sway
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    mkdir -p "${XDG_DATA_HOME}/sway"
    exec sway -d > "${XDG_DATA_HOME}/sway/sway.log" 2>&1
fi

