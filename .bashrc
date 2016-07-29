#####################
#
#  .bashrc, jerks (or .bash_profile if on OS X)
#
######################


# Prompt, currently: [ user - cwd ]
PS1="( \[\e[32;1m\]\h\e[m ) \n[ \[\e[32;1m\]\u \e[m- \[\033[0;34m\]\W \e[m] "

# How I'm currently breaking my $PATH
export PATH="/users/larsenr/bin:$PATH"

# nonsense to make test-kitchen work (or maybe ruby's bundle, I don't remember, it's for Ruby nonsense)
if [[ -d "$HOME/.rvm" ]] ; then
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
fi

# Aliases

alias ls='ls -alF'
alias duh='du -h'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias reload='echo "RELOADING BASH..." &source ~/.bashrc'
alias celar='clear'
