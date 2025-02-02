# ~/.zshrc
PS1="%B%F{1}<%n>%f%b @ %F{11}%m%f %F{4}%1~ >%f:%F{2} "
RPROMPT="%f%t:%jjobs"

export CLICOLOR=1
# Customize the color scheme for `ls`
export LSCOLORS=DxFxCxExGxegedabagaced
# History file for zsh
HISTFILE=~/.zsh_history
export LSCOLORS=ExFxBxDxCxegedabagacad
# How many commands to store in history
HISTSIZE=10000
SAVEHIST=10000
# Share history in every terminal session
setopt SHARE_HISTORY
#No beep
setopt NO_BEEP

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

