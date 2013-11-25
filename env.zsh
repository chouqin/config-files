export CLICOLOR=1

export WORKON_HOME=~/Envs                                                                                                                          
source /usr/local/bin/virtualenvwrapper.sh  

# rvm
source $HOME/.rvm/scripts/rvm

# java 
export JAVA_HOME=/usr/local/jdk
export PATH=$PATH:$JAVA_HOME/bin

# ant
export ANT_HOME=/usr/local/ant
export PATH=$PATH:$ANT_HOME/bin

# scala
export SCALA_HOME=/usr/local/scala
export PATH=$PATH:$SCALA_HOME/bin

# mpi
#export PATH=$PATH:/usr/local/mpi/bin
#
# maven
export M2_HOME=/usr/local/maven
export M2=$M2_HOME/bin
export PATH=$PATH:$M2

# make man colorful
function man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

cd() {
if [ -n "$1" ]; then
	builtin cd "$@" && ls -AF
else
	builtin cd ~ && ls -AF
fi
}
