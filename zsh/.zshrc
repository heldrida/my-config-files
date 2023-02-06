#!/bin/bash

# The syntax CATEGORY:Start|End is used to provide
# sections to the zshrc, is merely visual

# STARSHIP:Start
# Starship (cross-shell prompt)
eval "$(starship init zsh)"

# Starship configuration file
export STARSHIP_CONFIG=~/.config/starship/starship.toml
# STARSHIP:End

# ANTIGEN_PLUGIN_MANAGER:Start
# The plugin manager for zsh
# https://github.com/zsh-users/antigen/wiki/Installation
source ~/.zsh/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Bundles from the default repo
antigen bundle command-not-found
antigen bundle git
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle ael-code/zsh-colored-man-pages
antigen bundle chrissicool/zsh-256color

# Load the theme.
# This would override the Starship prompt
# antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply
# ANTIGEN_PLUGIN_MANAGER:End

# CUSTOM_SCRIPTS:Start
# https://github.com/heldrida/my-scripts
LOCAL_CUSTOM_SCRIPTS="$HOME/.scripts"
if [[ -d $LOCAL_CUSTOM_SCRIPTS ]]; then
  export PATH="$PATH":$(find ~/.scripts -maxdepth 3 -type d | paste -sd ":" -)
else
  printf "\n"
  echo "👹 Oops! $LOCAL_CUSTOM_SCRIPTS not found!"

  git clone https://github.com/heldrida/my-scripts.git "$HOME"/.scripts
fi

for dir in $HOME/.scripts/*; do
  if [[ ! -d $dir ]]; then
    continue;
  fi

  for scriptFile in $dir/*; do
    if [[ $scriptFile == *.sh ]]; then
      source "$scriptFile"
    fi
  done
done
# CUSTOM_SCRIPTS:End

# PATH:Start
# find the export PATH at the very end

# PATH:End

# ENVIRONMENT_VARIABLES:Start
LOCAL_ENV_VARS_PATH="$HOME/.zsh/.env"
if [[ -f $LOCAL_ENV_VARS_PATH ]]; then
  source "$LOCAL_ENV_VARS_PATH"
else
  printf "\n"
  echo "👹 Oops! $LOCAL_ENV_VARS_PATH not found!"
fi
# ENVIRONMENT_VARIABLES:End

# ALIASES:Start
# Aliases

# Visual Studio Code
alias code="open -a \"Visual Studio Code\""
# ALIASES:End
