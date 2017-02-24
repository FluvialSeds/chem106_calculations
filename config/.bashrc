# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# load modules
source new-modules.sh
module load gaussian/09-fasrc01
module load git/2.1.0-fasrc01

# Set max core dump size to 0.

ulimit -c 0

# Control the behavior of the history command.

shopt -s histappend
export PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
export HISTSIZE=9999
export HISTFILESIZE=999999

# Change directory color to purple.

LS_COLORS='di=0;35'; export LS_COLORS
alias ls="ls --color=auto --group-directories-first"
alias squeue1="squeue -u $(whoami) -o \"%.10i %.15P  %.50j %.15u %.8T %.10M %.15l %.6D %.6m %.2C %R\""
alias squeue2="/usr/bin/squeue -o \"%.10i %.15P  %.50j %.15u %.8T %.10M %.15l %.6D %.6m %.2C %R\""


