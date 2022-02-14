# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Display git branch name in prompt - Linux
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Display git branch name in prompt - ZSH
#
#function parse_git_branch() {
#    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
#}
#
#COLOR_DEF=$'\e[0m'
#COLOR_USR=$'\e[38;5;243m'
#COLOR_DIR=$'\e[38;5;197m'
#COLOR_GIT=$'\e[38;5;39m'
#setopt PROMPT_SUBST
#export PROMPT='${COLOR_USR}%n ${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} $ '
