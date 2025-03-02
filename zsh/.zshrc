## config from zsh
## ~/.zshrc
PS1="%B%F{5}<%n>%f%b @ %F{3}%m%f %F{4}%1~ >%f:%F{15} "
RPROMPT="%f%t:%jj"

#export CLICOLOR=1
#export LSCOLORS=DxFxCxExGxegedabagaced
## Enable colorized output for `ls`
export CLICOLOR=1

## Customize the color scheme for `ls`
export LSCOLORS=DxFxCxExGxegedabagaced
## History file for zsh
HISTFILE=~/.zsh_history

export TERM=xterm-256color

export LSCOLORS=ExFxBxDxCxegedabagacad


bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

## How many commands to store in history
HISTSIZE=10000
SAVEHIST=10000
HISTDUP=erase
## Share history in every terminal session
setopt SHARE_HISTORY
setopt hist_ignore_space
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups

##No beep
setopt NO_BEEP

## Homebrew
##eval "$(/opt/homebrew/bin/brew shellenv)"

## Golang
#export GOPATH=$HOME/go
#export PATH=$GOPATH/bin:$PATH

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" 

zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Plugins
# my plugin
#source $HOME/.zsh/zsh-alias/zsh-alias.zsh
# autosuggestions / vi mode / syntax higlighting
#source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
#source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source $HOME/.zsh/powerlevel10k/powerlevel10k.zsh-theme
####Tmux functions
#
#source $HOME/.zsh/tmux-functions/tmux_ssh.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh



