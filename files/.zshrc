. ~/.zsh/rc

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
if [ -f $HOME/.rvm/scripts/rvm ]; then
    source $HOME/.rvm/scripts/rvm
fi
