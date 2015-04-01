alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"

function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export CLICOLOR=1
export PATH=/usr/local/bin:$PATH
export PS1="\w\e[32m\$(parse_git_branch)\e[0m $ "

# see https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
