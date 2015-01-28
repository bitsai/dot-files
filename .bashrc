alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"

function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export GREEN="\[\033[0;32m\]"
export NO_COLOUR="\[\033[0m\]"
export PS1="$NO_COLOUR\w$GREEN\$(parse_git_branch) $NO_COLOUR$ "

export CLICOLOR=1
export PATH=/usr/local/bin:$PATH

# see https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
