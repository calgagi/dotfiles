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

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1='\[\e[1;32m[\]\u@\h\[\e[m\]$(parse_git_branch) \[\e[1;34m\]\w\[\e[m\e[1;32m]\e[m\] \$ '


if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# some more ls aliases
[[ "$OSTYPE" == "darwin"* ]] && export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd" && \
  alias ls='ls -G' || alias ls='ls --color'

alias ll='ls -alF'
alias la='ls -als'
alias l='ls -ls'
alias scr='screen -T xterm-color'
alias tmux='TERM=xterm-256color tmux'

alias gdb='gdb -q'

export PATH="/usr/local/bin:$HOME/bin:$PATH"

LS_COLORS="ow=01;36;40" && export LS_COLORS

stty sane
