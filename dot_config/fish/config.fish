function fish_greeting
end

set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_showdirtystate 'yes'

function chrome
    open -a "Google Chrome" $argv[1]
end

function mcd
    mkdir -p $argv[1]
    cd $argv[1]
end

set -x EDITOR vim
set -x VISUAL vim
set -x PAGER less
set -x LESS '-i -n -R'
set -x CLICOLOR true
set -x PYTHONIOENCODING utf-8

alias dl 'curl -L -O'
alias la 'ls -lA'
alias lh 'la -h'
alias pgrep 'pgrep -l'
alias rf 'rm -rf'
alias watch 'watch -n 1'
alias htop 'htop -d 10'
alias rg 'rg --smart-case'

fish_add_path /opt/homebrew/bin
fish_add_path "$HOME/bin"

if test -e "$HOME/.config/fish/local.fish"
    source "$HOME/.config/fish/local.fish"
end
