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

set -x CLICOLOR true
set -x EDITOR vim
set -x LESS '-i -n -R'
set -x PAGER less
set -x PYTHONIOENCODING utf-8
set -x SSH_AUTH_SOCK "$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
set -x VISUAL vim

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
