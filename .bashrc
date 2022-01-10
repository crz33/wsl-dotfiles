PS1='\n[\w]\n\$ '
if [ -f ~/bin/git-completion.bash -a -f ~/bin/git-prompt.sh ]; then
  . ~/bin/git-completion.bash
  GIT_PS1_SHOWDIRTYSTATE=1
  . ~/bin/git-prompt.sh
  PS1='\n[\w] $(__git_ps1 " (%s)")\n\$ '
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi