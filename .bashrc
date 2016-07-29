#####################
#
#  .bashrc, jerks (or .bash_profile if on OS X)
#
######################


# Prompt, currently: [ user - cwd ]
PS1=$'( \xf0\x9f\x92\xbb \[\e[32;1m\] \h\e[m ) \n[ \xf0\x9f\x91\x8a\[\e[32;1m\]  \u \e[m- \xf0\x9f\x93\x82 \[\033[0;34m\] \W \e[m] '
# Holy crap, there are some good emojis here: http://www.utf8-chartable.de/unicode-utf8-table.pl

# How I'm currently breaking my $PATH
export PATH="/users/larsenr/bin:$PATH"

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
