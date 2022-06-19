# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/profile.pre.bash" ]] && . "$HOME/.fig/shell/profile.pre.bash"
if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
    # Fig pre block. Keep at the top of this file.
        [[ -s ~/.fig/fig.sh ]] && source ~/.fig/fig.sh
    # Fig post block. Keep at the bottom of this file.
    fi

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/profile.post.bash" ]] && . "$HOME/.fig/shell/profile.post.bash"
