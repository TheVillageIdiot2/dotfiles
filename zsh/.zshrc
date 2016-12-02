# The following lines were added by compinstall
zstyle :compinstall filename '/home/jchenry//.zshrc'

#Set preferred editors
export VISUAL=vim
export EDITOR="$VISUAL"
#Set binds to be vim-like
bindkey -v

#Do some, uh, stuff
autoload -Uz compinit promptinit
compinit #Enable autocompletion
promptinit #initialize... prompt? I belevie its the tab-completion but honestly no idea

#Configure autocomplete more
setopt COMPLETE_ALIASES #Autocomplete aliases

# Configure history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

#Set history between multiple sessions to be in order
setopt INC_APPEND_HISTORY

#Ignore duplicate commands in history
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS

#Tidy up lines
setopt HIST_REDUCE_BLANKS

#Set bang-history (!!, etc) to confrm before execute
setopt HIST_VERIFY

#Flag to notify if a globber fails
setopt EXTENDED_GLOB
setopt nomatch notify

#Turn off beeping 
setopt nobeep

#Enable multi stream (EX: myprog <file1 <file, or echo "UseMe!" >f1 >f2)
setopt MULTIOS

#Enable background notify
setopt notify


#Enable save state of bash between programs, so stuff dont fuck the term
ttyctl -f

# Temporarily set the prompt to something ok.... Fix later
prompt adam2

#Use these if you have super complicated bash stuff
#setopt PROMTPT_SUBST
#PS1='${PWD}% '
#PS1='  %~

#Basic aliases
# - Config files
alias vimzsh="vim ~/.zshrc"
alias vimi3="vim ~/.config/i3/config"
alias vimrc="vim ~/.vimrc"
alias vimxres="vim ~/.Xresources"


alias cnct="cat /root/connect_cmds.txt | zsh"
alias cnctjeh="cat /root/home_cnct_cmds.txt | zsh"

#Android SDK stuff
export ANDROID_HOME=~/Android/Sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
