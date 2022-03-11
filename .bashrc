PS1='[\w] \$ '
if [ -f ~/bin/git-completion.bash -a -f ~/bin/git-prompt.sh ]; then
  . ~/bin/git-completion.bash
  GIT_PS1_SHOWDIRTYSTATE=1
  . ~/bin/git-prompt.sh
  PS1='[\w] $(__git_ps1 " (%s)")\n\$ '
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# local bin
export PATH="$HOME/dotfiles/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
