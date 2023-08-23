#  $HOME/.bashrc

# clear aliases
unalias -a

if [ $HOME != /root ]
then
  if [ -n "$SSH_CLIENT" ]
  then
    PS1="(\[\033[1;32m\]ssh\[\033[00m\]):\w>"
  else
    if [ -n "$MINGW_PREFIX" ]
    then
      PS1="(\[\033[0;35m\]mintty\[\033[00m\]):\w>"
    else
      PS1="\w>"
    fi
  fi

  if [ $TERM != linux ]
  then
    PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME}\007"'
  fi

  umask 022

else
  PS1="(\[\033[1;31m\]\u\[\033[00m\]):\w>"
fi


# functions
rlogin() { if [ -n "$2" ]; then ssh "$1"@"$2" ; else echo "usage: $FUNCNAME <userID> <host>" ; fi }


# aliases (all users)
alias cd..='cd ..'
alias cls='clear'
alias cp='cp -iR'

alias dir-b='ls --group-directories-first -1A --color'  # single column view
alias dir-d='ls --group-directories-first -dhl --color'  # directory listing with *
alias dir-f='ls -ALhlp --color | grep "/"'  # folder only view
alias dir-h='ls --group-directories-first -adhl --color .*'  # hidden files view
alias dir-s='ls -AhlrS --color'  # size view
alias dir-t='ls -Ahlrt --color'  # timestamp view
alias dir-w='ls --group-directories-first -Alx --color'  # wide view
alias dir='ls --group-directories-first -ahl --color'

alias dircmp='diff -r'

alias edit='vim'

alias fc='vimdiff'
alias fc-b='diff'

alias mv='mv -i'

alias path='echo -e ${PATH//:/\\n}'

alias printenv='env | sort'
alias rm='rm -i'

alias vi='vim -i NONE -u NONE'  # \r  -->  ^M
alias view='vim -MR'

