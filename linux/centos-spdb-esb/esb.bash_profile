# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
export JAVA_HOME="/usr/lib/jvm/java-1.6.0-openjdk"

export PATH
alias cdmm='cd /esb/app/SmartMOM;pwd'
alias cdbin='cd /esb/app/SmartESB/bin;pwd'

alias cdic='cd /esb/app/SmartESB/configs/in_conf;pwd'
alias cdoc='cd /esb/app/SmartESB/configs/out_conf;pwd'
alias cdjc='cd /esb/app/SmartESB/configs/journal_conf;pwd'

alias cdlog='cd /esb/log;pwd'
alias cdjl='cd /esb/log/journal;pwd'
alias cdjf='cd /esb/log/journal_files;pwd'

alias tt='cd /esb/app/esbselfcheck;pwd'
alias ap='cd /esb/app;pwd'

alias psj='ps -ef|grep java'
alias killj='kill -9 `pgrep java`'
alias lr='ls -ltr'

alias cfe='db2 connect to esbdbfe'
alias cbe='db2 connect to esbdbbe'
alias r='db2 connect reset'

export LANG=en_US

hh()
{
alias
}
