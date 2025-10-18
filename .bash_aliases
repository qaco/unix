#! /bin/bash

if [[ -x /usr/bin/dircolors ]]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --exclude-dir venv -I --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias gcc='LANG=en_GB gcc'
alias clang='LANG=en_GB clang'

alias git='LANG=en_GB git'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

if tty | grep -q 'tty'; then
    alias emacsclient="TERM=xterm-256color emacsclient -c --alternate-editor= "
    alias emacs="TERM=xterm-256color emacs"
fi

alias pdflatex='pdflatex -halt-on-error'
alias neofetch='neofetch --gtk3 off --disable memory uptime'
alias emacs-agenda='ORG_HOME="$HOME" emacs -f org-agenda-list'
alias emacs-term='emacs -f multi-vterm'
alias emacs-base='emacs -q --load=~/conf/.emacs.d/standalone.el'
