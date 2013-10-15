#mac osx colors for ls
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#dont put diplicate lines in the history
export HISTCONTROL=ignoredups

#set editors and visual variables
set -o vi

#enable color for ls
if [ "$TERM" != "dumb" ]; then
    [ -e "$HOME/.dir_colors" ] && DIR_COLORS="$HOME/.dir_colors"
    [ -e "$DIR_COLORS" ] || DIR_COLORS=""
fi



# Set Some Colors
BGREEN='\[\033[1;32m\]'
GREEN='\e[0;32m'
BRED='\[\033[1;31m\]'
RED='\[\033[0;31m\]'
BBLUE='\[\033[1;34m\]'
BLUE='\[\033[0;34m\]'
NORMAL='\[\033[00m\]'
WHITE='\e[1;37m'

# Prompt
PS1="${BGREEN}\u@\h ${BLUE}(${RED}\w${BLUE}) ${RED}\n\$ ${NORMAL}"

# Set umask
umask 002



