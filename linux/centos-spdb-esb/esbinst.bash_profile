# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
alias cfe='db2 connect to esbdbfe'
alias cbe='db2 connect to esbdbbe'
alias r='db2 connect reset'

hh()
{
echo "db2start # start db2 database"
echo "db2stop  # stop db2 database"
echo "cfe=db2 connect to esbdbfe"
echo "cbe=db2 connect to esbdbbe"
echo "r=db2 connect reset"
}
