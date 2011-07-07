# The following lines were added by compinstall

export LANG="C"


zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' expand suffix
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s

autoload -Uz compinit
compinit -C
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep
setopt histignoredups
setopt histignorespace extended_history
setopt inc_append_history share_history
# End of lines configured by zsh-newuser-install

# Some colors:
fg_green=$'%{\e[0;32m%}'
fg_blue=$'%{\e[0;34m%}'
fg_cyan=$'%{\e[0;36m%}'
fg_red=$'%{\e[0;31m%}'
fg_brown=$'%{\e[0;33m%}'
fg_purple=$'%{\e[0;35m%}'

fg_light_gray=$'%{\e[0;37m%}'
fg_dark_gray=$'%{\e[1;30m%}'
fg_light_blue=$'%{\e[1;34m%}'
fg_light_green=$'%{\e[1;32m%}'
fg_light_cyan=$'%{\e[1;36m%}' fg_light_red=$'%{\e[1;31m%}'
fg_light_purple=$'%{\e[1;35m%}'
fg_no_colour=$'%{\e[0m%}'

fg_white=$'%{\e[1;37m%}'
fg_black=$'%{\e[0;30m%}'

want_color=true

case "$TERM" in
xterm)
    want_color=true
esac

# if we're in a gnome-terminal, manually set the term
if [ "$COLORTERM" = "gnome-terminal" ]; then
    want_color=true
fi

# set a fancy prompt (non-color, unless we know we "want" color)
if [ $want_color = true ] ; then
    #PS1='[%{[01;32m%}%n@%m%{[00m%}:%{[01;35m%}[%T]%{[00m%}:%{[00;34m%}$(abbreviate_paths "%~")%{[00m%}\$ '
    PS1="[${fg_green}%n${fg_no_colour}@${fg_red}%m${fg_no_colour}:${fg_blue}%~${fg_no_colour}]\$ "
else
    PS1='[%n@%m:%~\$ '
fi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

autoload -U url-quote-magic
zle -N self-insert url-quote-magic

export EDITOR=vim
export VISUAL=vim
export GREP_OPTIONS="--color"
export PATH=$PATH:"$HOME/bin"
export LESS="-i -n -R"

alias ls="ls -G"
alias la="ls -lA"
alias lh="la -h"
alias rf="rm -rf"
alias pgrep="pgrep -l"
alias dl="curl -O"
alias top="top -s 1 -o cpu"
alias htop="htop -d 10"

ZSHRCLOCAL=~/.zshrclocal
if [[ -r $ZSHRCLOCAL ]]; then
    source $ZSHRCLOCAL
fi
