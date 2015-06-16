function fish_greeting
end

set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_showdirtystate 'yes'

function fish_prompt
  set_color magenta
  printf '%s' (prompt_pwd)
  set_color normal
  printf '%s ' (__fish_git_prompt)
end

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

function prepend_to_path -d "Prepend the given directory, if it exists, to \$PATH"
    if test -d $argv[1]
        set -gx PATH "$argv[1]" $PATH
    end
end

prepend_to_path "$HOME/go/bin"
prepend_to_path "/usr/local/share/npm/bin"

set -x EDITOR vim
set -x VISUAL vim
set -x PAGER less
set -x LESS '-i -n -R'
set -x CLICOLOR true
set -x PYTHONIOENCODING utf-8

alias la 'ls -lA'
alias lh 'la -h'
alias rf 'rm -rf'
alias pgrep 'pgrep -l'
alias dl 'curl -L -O'
alias top 'top -s 1 -o cpu'
alias htop 'htop -d 10'
alias watch 'watch -n 1'
