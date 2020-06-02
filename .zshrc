#!/bin/zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Default programs:
export EDITOR="vim"
export TERMINAL="kitty"
export BROWSER="firefox"
export READER="zathura"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export WINEPREFIX="${XDG_DATA_HOME:-$HOME/.local/share}/wineprefixes/default"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export ANSIBLE_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/ansible/ansible.cfg"
export NVM_DIR="$HOME/.config/nvm"

# Other program settings:
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
export _JAVA_AWT_WM_NONREPARENTING=1
export ARCHFLAGS="-arch x86_64"
export MOZ_ENABLE_WAYLAND=1
export NVM_COMPLETION=true
export NVM_LAZY_LOAD=true


# Path
# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
# Python
export PYTHONPATH=$PYTHONPATH
# Yarn
export PATH="$(yarn global bin):$PATH"


# Zsh common configuration
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
COMPLETION_WAITING_DOTS="true"


autoload -U colors && colors
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

# Alias
alias diff="diff --color=auto"


source $HOME/.config/antigen/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle MichaelAquilina/zsh-auto-notify
antigen bundle lukechilds/zsh-nvm

antigen theme romkatv/powerlevel10k

# Tell antigen that you're done
antigen apply


if [ -e /home/frilox/.nix-profile/etc/profile.d/nix.sh ]; then
    . /home/frilox/.nix-profile/etc/profile.d/nix.sh;
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
