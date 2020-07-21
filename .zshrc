#!/bin/zsh

# Uncomment to activate debugging from here
# set -e
# set -x

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

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Set cache dir if empty
if [ -z $ZSH_CACHE_DIR ]; then
    if [ ! -d $ZSH_CACHE_DIR ]; mkdir -p "${XDG_CACHE_HOME:-$HOME/.cache}"
    ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}"
fi

# Load oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Load antigen
source $HOME/.config/antigen/antigen.zsh
antigen init $HOME/.config/antigen/antigenrc

# Load .zsh files present in
#
#   * ~/.zsh/alias.d,
#   * ~/.zsh/config.d/pre,
#   * ~/.zsh/config.d,
#   * ~/.zsh/config.d/post
#
# In this exact order, and per directory each .zsh file in alphabetical order.
_dir_aliasd=$XDG_CONFIG_HOME/zsh/config.d
_dir_configd=$XDG_CONFIG_HOME/zsh/config.d

for _dir in $_dir_aliasd $_dir_configd/pre $_dir_configd $_dir_configd/post; do
    if [ -d $_dir ]; then
        # Load each .zsh file in $_dir, if $_dir exists or is symbolic link
        for config in $_dir/*.zsh; do
            source $config
        done
    fi
done

autoload -U colors && colors
autoload -U up-line-or-beggining-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

kitty + complete setup zsh | source /dev/stdin


if [ -e /home/frilox/.nix-profile/etc/profile.d/nix.sh ]; then
    source /home/frilox/.nix-profile/etc/profile.d/nix.sh;
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
