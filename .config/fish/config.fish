# Starship
starship init fish | source

# PATH
fish_add_path ~/.bin

# Environment variables
set -x FZF_DEFAULT_COMMAND 'fd --type f'
set -x FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND

# Fish configuration
set fish_greeting

# Aliases
alias l="exa --long --header --git --grid"
alias tree="exa -T --long"
alias git-clean="~/.bin/cleanup-branches.sh"

# Tool replacements
alias ls="l"
alias nano="micro"
alias cat="bat"
