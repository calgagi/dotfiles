# ~/.bashrc: executed by bash(1) for non-login shells.
#export TERM=screen-256color
export TERM=xterm

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm) color_prompt=yes;;
    xterm-color) color_prompt=yes;;
    screen-256color) color_prompt=yes;;
    screen) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

color_promprt=yes

# Extract a file
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
}

# Colors
RESET="\[\017\]"
NORMAL="\[\033[0m\]"
RED="\[\033[31;1m\]"
YELLOW="\[\033[38;5;228m\]"
WHITE="\[\033[37;1m\]"
GREEN="\[\033[38;5;120m\]"
BLUE="\[\033[38;5;81m\]"
ORANGE="\[\033[38;5;216m\]"
PINK="\[\033[38;5;177m\]"
PURPLE="\[\033[38;5;105m\]"
BAD="GREEN"
SELECT="if [ \$? = 0 ]; then echo \"${GREEN}\"; else echo \"${RED}\"; fi"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# THE ALL IMPORTANT PS1
make_prompt() {
    PS1="${GREEN}[${ORANGE}\u@\h${NORMAL}$(parse_git_branch) ${PURPLE}\w${GREEN}] ${GREEN}\$${NORMAL} "
}

PROMPT_COMMAND='make_prompt'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -als'
alias l='ls -ls'
alias cd='clear && cd'
alias scr='screen -T xterm-color'
alias tmux='TERM=xterm-256color tmux'
alias g++='g++ --std=c++17 -O2 -Wextra'
alias gdb='gdb -q'
alias ls='ls --color=auto'
alias please='sudo'

DIR_COLOR="\033[38;5;098"
FILE_COLOR="\033[38;5;227"
DEF_COLOR="\033[0"
export LS_COLORS="ln=$DEF_COLOR:pi=$DEF_COLOR:so=$DEF_COLOR:bd=$DEF_COLOR:cd=$DEF_COLOR:mi=$DEF_COLOR:ex=$FILE_COLOR:di=$DEF_COLOR:ow=$DEF_COLOR:no=$DEF_COLOR:fi=$FILE_COLOR:"

export PATH="$PATH:$HOME/cf_rand:$HOME/.local/bin"

stty sane
