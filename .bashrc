#####################
#
#  .bashrc, jerks (or .bash_profile if on OS X)
#
######################

# Color Vars
BLACK="\[\033[0;30m\]"
BLACKBOLD="\[\033[1;30m\]"
RED="\[\033[0;31m\]"
REDBOLD="\[\033[1;31m\]"
GREEN="\[\033[0;32m\]"
GREENBOLD="\[\033[1;32m\]"
YELLOW="\[\033[0;33m\]"
YELLOWBOLD="\[\033[1;33m\]"
BLUE="\[\033[0;34m\]"
BLUEBOLD="\[\033[1;34m\]"
PURPLE="\[\033[0;35m\]"
PURPLEBOLD="\[\033[1;35m\]"
CYAN="\[\033[0;36m\]"
CYANBOLD="\[\033[1;36m\]"
WHITE="\[\033[0;37m\]"
WHITEBOLD="\[\033[1;37m\]"
CLEAR="\[\033[0m\]"

# Deconstructed parts of my prompt
user_em=$'\xf0\x9f\x91\x8a'
host_em=$'\xf0\x9f\x92\xbb'
pwd_em=$'\xf0\x9f\x93\x82'

# Date lookup


m_d=`date | awk '{print $2, $3}'`

case "$m_d" in
'Oct '[1-31] )
  # JAck-o-Lantern for October
  date_em=$'\xf0\x9f\x8e\x83'
  ;;
'Dec 25' )
  # Christmas Tree
  date_em=$'\xf0\x9f\x8e\x84'
  ;;
'Jun 24' )
  # Birthday Cake
  date_em=$'\xf0\x9f\x8e\x82'
  ;;
'Jul 4' )
  # Alien
  date_em=$'\xf0\x9f\x91 \xbd'
  ;;
'Feb1 4' )
  # 
  date_em=$'\xf0\x9f\x92\x95'
  ;;
*)
  date_em=""
  ;;
esac
    

# Prompt, currently: [ user - cwd ]

PS1="\[( ${pwd_em}${BLUE}  \w ${CLEAR}) ${date_em} \n[ ${user_em}${GREEN}  \u ${CLEAR}- ${host_em}${GREEN}  \h ${CLEAR}] "

# Holy crap, there are some good emojis here: http://www.utf8-chartable.de/unicode-utf8-table.pl

# How I'm currently breaking my $PATH
export PATH="$HOME/bin:/Users/roy/Library/Python/2.7/bin/:$PATH"
export GOPATH="$HOME/programming/go"

# nonsense to make test-kitchen work (or maybe ruby's bundle, I don't remember, it's for Ruby nonsense)
if [[ -d "$HOME/.rvm" ]] ; then
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
fi

# Aliases

alias ls='ls -alF'
alias duh='du -h'
alias gi="git init"
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias reload='echo "RELOADING BASH..." &source ~/.bashrc'
alias celar='clear'
alias weather='curl wttr.in/boston'
