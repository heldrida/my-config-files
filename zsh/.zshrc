# Starship (cross-shell prompt)
eval "$(starship init zsh)"

# Starship configuration file
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Autocompletion
# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax highlight
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
# source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Antigen plugin manager
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
# antigen apply
