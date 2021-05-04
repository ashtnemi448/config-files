# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
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

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
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
alias ls='ls -F'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
#alias gp='ae6e31d7b04daf5cf377e5552aeb23018828aae9'
alias gp='echo -n "ae6e31d7b04daf5cf377e5552aeb23018828aae9" | xclip -selection clipboard'
alias ads='cd /home/atharwa/adserver/FastCGI_AdServer'
alias aa='clear'
alias nv='/home/atharwa/nvim.appimage'
#alias vp='echo "AA&z#QTk/i0al7" | xclip -r'
alias vp='echo -n "AA&z#QTk/i0al7" | xclip -selection clipboard'
alias jp='echo -n "aQ6yz*fZPDA&" | xclip -selection clipboard'
alias sv3j='ssh atharwa.adawadkar@10.110.205.11'
alias hm='cd /home/atharwa'
alias code='code  $PWD --user-data-dir'
alias cmmd='nv /home/atharwa/commandstxt'
alias vim='nvim'
alias bsh='nv ~/.bashrc'
alias init='nv ~/.config/nvim/init.vim'
alias dwn='cd /home/atharwa/Downloads'
alias bsrc='source ~/.bashrc'
alias trans='cd /home/http/go_workspace/src/git.pubmatic.com/code/translator'
alias tlogs='cd /home/http/go_workspace/log'
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
export hm=/home/atharwa
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#    . /etc/bash_completion
#fi


# PS1='$[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n> '
export PS1="\n\[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;6m\][\[$(tput sgr0)\]\[\033[38;5;34m\]\d\[$(tput sgr0)\]\[\033[38;5;6m\]]\[$(tput sgr0)\]-\[$(tput sgr0)\]\[\033[38;5;11m\]\@\[$(tput sgr0)\] \n\[$(tput sgr0)\]\[\033[38;5;47m\]>\[$(tput sgr0)\] \[$(tput sgr0)\]"

export PATH=$PATH:/usr/local/go/bin
clear
echo "ROOT !!"

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/go/bin:/usr/local/go/bin:/usr/local/go/bin:/home/http/go_workspace/bin
export GOPATH=/home/http/go_workspace
