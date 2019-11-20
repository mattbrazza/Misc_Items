#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## PROMPT CONFIGURATION ##
export PROMPT_DIRTRIM=2
PS1='[\
\[\e[1;33m\]\
$([ "$(id -un)" == "mbrazza" ] && echo "λ" || echo "\u")\
\[\e[0m\]\
:\
\[\e[3;33m\]\
\w\
\[\e[0m\]\
]\$ ';
#PS1='[\u@\h:$(p=${PWD/#"$HOME"/~};((${#p}>30))&&echo "${p::10}…${p:(-19)}"||echo "\w")]\$ '
PS2="\[\e[0:37m\]>\[\e[0m\]}"   # Multi-line prompt
PS3=""                          # Select command prompt
PS4="\[\e[0:37m]]+\[\e[0m\]"    # Execution trace prompt
## END PROMPT ##

## PERSONAL CONFIGURATION ##
# Also see ~/.bash_profile
#complete -cf sudo
alias rm="rm -v"
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias del="mv -v -t $HOME/.Trash"
alias ls="ls -h --color=auto --group-directories-first"
## END PERSONAL ##

