# utilities functions
_have() { type "$1" &>/dev/null; }

# vi vim nvim
_have vim && alias vi=vim && EDITOR=vim
_have nvim && alias vi=nvim && EDITOR=nvim
_have nvim && alias vim=nvim && EDITOR=nvim

## go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
