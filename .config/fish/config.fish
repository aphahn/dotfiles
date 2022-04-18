function fish_greeting
end

set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_showdirtystate 'yes'

function chrome
    open -a "Google Chrome" $argv[1]
end

function gerrit-clean
    for branch in (git for-each-ref --format='%(refname:short)' refs/heads/);
        set changeid (git log $branch|ack -1 Change-Id)
        if git log master|ack -1 $changeid > /dev/null;
            if [ "$branch" != "master" ];
                git branch -D "$branch"
            end
        end
    end
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
