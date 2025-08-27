#!/bin/zsh

# Uncomment to activate debugging from here
# set -e
# set -x

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

# Load antigen
export ADOTDIR=${XDG_DATA_HOME}/antigen
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
_dir_aliasd=$XDG_CONFIG_HOME/zsh/alias.d
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

if [ -e /home/frilox/.nix-profile/etc/profile.d/nix.sh ]; then
    source /home/frilox/.nix-profile/etc/profile.d/nix.sh;
fi

[[ ! -f "/etc/profile.d/google-cloud-cli.sh" ]] || source "/etc/profile.d/google-cloud-cli.sh"
[[ ! -f "/opt/google-cloud-sdk/completion.zsh.inc" ]] || source "/opt/google-cloud-sdk/completion.zsh.inc"
[[ ! -f "/opt/google-cloud-sdk/path.zsh.inc" ]] || source "/opt/google-cloud-sdk/path.zsh.inc"

# Configure pyenv
export PYENV_ROOT="${XDG_DATA_HOME}/.pyenv"
command -v pyenv >/dev/null || export PATH="${PYENV_ROOT}/bin:${PATH}"
eval "$(pyenv init -)"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
