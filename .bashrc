# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
alias tmux="tmux -2"
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

cd() {
if [ -n "$1" ]; then
	builtin cd "$@" && ls -AF
else
	builtin cd ~ && ls -AF
fi
}

export JAVA_HOME='/usr'
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export JMFHOME="/home/liqi/Documents/JMF-2.1.1e"  
export HADOOPHOME='/home/liqi/Downloads/hadoop-1.0.0'
export LD_LIBRARY_PATH="/home/liqi/Documents/JMF-2.1.1e/lib":"/home/liqi/Downloads/hadoop-1.0.0/lib"
export CLASSPATH="/home/liqi/Documents/JMF-2.1.1e/lib/jmf.jar:/home/liqi/Documents/JMF-2.1.1e/lib/mp3plugin.jar:/home/liqi/Documents/JMF-2.1.1e/lib/mediaplayer.jar:/home/liqi/Documents/JMF-2.1.1e/lib/multiplayer.jar":$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/hadoop-thriftfs-1.0.0.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/aspectjrt-1.6.5.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/log4j-1.2.15.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/commons-configuration-1.6.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/commons-digester-1.8.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/commons-httpclient-3.0.1.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/junit-4.5.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/commons-el-1.0.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/kfs-0.2.2.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/jsch-0.1.42.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/oro-2.0.8.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/slf4j-api-1.4.3.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/jasper-runtime-5.5.12.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/core-3.1.1.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/slf4j-log4j12-1.4.3.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/aspectjtools-1.6.5.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/commons-math-2.1.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/jetty-util-6.1.26.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/hsqldb-1.8.0.10.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/commons-cli-1.2.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/asm-3.2.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/jets3t-0.6.1.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/commons-net-1.4.1.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/servlet-api-2.5-20081211.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/jackson-mapper-asl-1.0.1.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/commons-logging-1.1.1.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/jasper-compiler-5.5.12.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/hadoop-capacity-scheduler-1.0.0.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/jersey-core-1.8.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/commons-beanutils-1.7.0.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/commons-daemon-1.0.1.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/jdeb-0.8.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/jersey-json-1.8.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/commons-collections-3.2.1.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/xmlenc-0.52.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/commons-logging-api-1.0.4.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/commons-codec-1.4.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/jersey-server-1.8.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/commons-lang-2.4.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/commons-beanutils-core-1.8.0.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/jackson-core-asl-1.0.1.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/mockito-all-1.8.5.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/jetty-6.1.26.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/lib/hadoop-fairscheduler-1.0.0.jar:$CLASSPATH
#export CLASSPATH=$HADOOPHOME/lib/commons-logging-1.1.1.jar:$CLASSPATH
#export CLASSPATH=$HADOOPHOME/asm-3.2.jar:$CLASSPATH
#export CLASSPATH=$HADOOPHOME/xmlenc-0.52.jar:$CLASSPATH
#export CLASSPATH=$HADOOPHOME/lib/commons-configuration-1.6.jar:$CLASSPATH
#export CLASSPATH=$HADOOPHOME/kfs-0.2.2.jar:$CLASSPATH
#export CLASSPATH=$HADOOPHOME/jets3t-0.6.1.jar:$CLASSPATH
#export CLASSPATH=$HADOOPHOME/commons-codec-1.4.jar:$CLASSPATH
#export CLASSPATH=$HADOOPHOME/log4j-1.2.15.jar:$CLASSPATH
#export CLASSPATH=$HADOOPHOME/commons-cli-1.2.jar:$CLASSPATH
#export CLASSPATH=$HADOOPHOME/commons-httpclient-3.0.1.jar:$CLASSPATH
#export CLASSPATH=$HADOOPHOME/commons-httpclient-3.0.1.jar:$CLASSPATH
export CLASSPATH=$HADOOPHOME/hadoop-core-1.0.0.jar:$CLASSPATH
#export CLASSPATH=$HADOOPHOME/hadoop-ant-1.0.0.jar:$CLASSPATH
