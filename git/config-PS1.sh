# git setup
parse_git_branch() {

   if ! git rev-parse --git-dir > /dev/null 2>&1; then
        return 0
    fi

   git_branch=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')

   if git diff --quiet 2>/dev/null >&2; then
        git_color="${c_git_clean}"
    else
        git_color=${c_git_dirty}
    fi

   echo " [$git_color$git_branch${c_reset}]"
}

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[32m\]\$(parse_git_branch)\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
