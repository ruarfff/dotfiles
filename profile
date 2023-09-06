# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/profile.pre.bash" ]] && builtin source "$HOME/.fig/shell/profile.pre.bash"
if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
    # Fig pre block. Keep at the top of this file.
        [[ -s ~/.fig/fig.sh ]] && source ~/.fig/fig.sh
    # Fig post block. Keep at the bottom of this file.
    fi

. "$HOME/.cargo/env"

export OPENBLAS="$(brew --prefix openblas)"
export LDFLAGS="-L/opt/homebrew/opt/openblas/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openblas/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openblas/lib/pkgconfig"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/profile.post.bash" ]] && builtin source "$HOME/.fig/shell/profile.post.bash"
