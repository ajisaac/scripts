export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export EDITOR='vim'

source $ZSH/oh-my-zsh.sh

PROMPT='%{$fg_bold[blue]%}%n@%m %(?:%{$fg_bold[green]%}%1{➜%} :%{$fg_bold[red]%}%1{➜%} )%{$reset_color%}'

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -v
zstyle ':omz:update' mode auto

zstyle :compinstall filename '/home/aaron/.zshrc'
autoload -Uz compinit
compinit

alias q="exit"