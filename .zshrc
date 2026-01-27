# utilities functions
_have() { type "$1" &>/dev/null; }

# vi vim nvim
_have vim && alias vi=vim && EDITOR=vim
_have nvim && alias vi=nvim && EDITOR=nvim
_have nvim && alias vim=nvim && EDITOR=nvim

## go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# functions
rip() {
    local args=()
    fzf --ansi \
        --disabled \
        --prompt 'RG> ' \
        --delimiter : \
        --bind "change:reload:(
            q={q};
            args=();
            for w in \$q; do
                args+=(-i -e \$w);
            done;
            rg --line-number --no-heading --color=always -g '*.md' \"\${args[@]}\" || true
        )" \
        --preview 'batcat --style=numbers --color=always --highlight-line {2} {1}' \
        --preview-window up:60% \
    | awk -F: '{print "+"$2, $1}' \
    | xargs nvim
}
