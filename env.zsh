export CLICOLOR=1

export WORKON_HOME=~/Envs                                                                                                                          
source /usr/local/bin/virtualenvwrapper.sh  

# rvm
source $HOME/.rvm/scripts/rvm

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
