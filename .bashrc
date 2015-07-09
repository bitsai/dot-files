if [ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]; then
    . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
fi

function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function parse_forward_env () {
    cat "$(git rev-parse --show-toplevel 2> /dev/null)"/app/.environment 2> /dev/null
}

export CLICOLOR=1
export LANG="en_US.UTF-8"
export PATH=/usr/local/bin:$PATH

BLUE="\[\033[0;34m\]"
GREEN="\[\033[0;32m\]"
RED="\[\033[0;31m\]"
NO_COLOR="\[\033[0m\]"
PS1="$BLUE\w$GREEN\$(parse_git_branch)$RED\$(parse_forward_env)$NO_COLOR $ "
