# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
alias gs='git status'
alias gl='git log'
alias ds='du -sh *'
alias doc='cd /root/Documents;pwd'
alias dl='cd /root/Downloads;pwd'
