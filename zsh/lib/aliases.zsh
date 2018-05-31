# Reload zsh config
alias reload!='source ~/.zshrc'

# Super user
alias _='sudo'

# Directory listing

if [[ `uname` == 'Darwin' ]]; then
  colorflag="-G"
  export lsal='CLICOLOR_FORCE=1 ls -lahF ${colorflag} | less -R'
else
  colorflag="--color"
  export lsal='ls -lahF ${colorflag} | less -R'
fi

alias l='ls -lAhF ${colorflag}'
alias ll='ls -lhF ${colorflag}'
alias la='ls -AhF ${colorflag}'
alias lsa='ls -lahF ${colorflag}'

alias k='k -Ah'
alias kl='k -Ah|less -R'

# Homebrew
alias brews='brew list -1|grep $1'

# Other
alias rm='rm -i'
alias du='du -h'
alias cp='cp -i'
alias mv='mv -i'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
if hash fd 2>/dev/null; then
  alias find='echo "No! Use fd instead! So. Much. Faster."'
fi

# No `free` command on OSX, here's a hacky substitute
if [[ `uname` == 'Darwin' ]]; then
  alias free="top -l 1 -s 0 | grep PhysMem"
fi

# Get IP Addresses
# TODO: Turn this into a function that can handle different OSes
alias ip='echo "External IP:   " `dig +short myip.opendns.com @resolver1.opendns.com` && echo "Ethernet (en3):" `ipconfig getifaddr en3` && echo "Wireless (en0):" `ipconfig getifaddr en0`'
alias localip='echo "Ethernet (en0):" `ipconfig getifaddr en0` && echo "Wireless (en1):" `ipconfig getifaddr en1`'
alias ips='ifconfig -a | perl -nle"/(\d+\.\d+\.\d+\.\d+)/ && print $1"'

# Recursively delete `.DS_Store` files
alias dscleanup="find . -name '*.DS_Store' -type f -ls -delete"

# ROT13 encode/decode
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# Empty the Trash on all mounted volumes and the main HDD
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash"

# Custom git aliases (override git plugin)
alias glg="g hist"

# kubectl stuff
alias klusters="kubectl config get-contexts | tr -s ' ' | cut -d ' ' -f 2 | sort"
