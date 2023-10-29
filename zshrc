# Fig pre block. Keep at the top of this file.
[[ -s ~/.fig/fig.sh ]] && source ~/.fig/fig.sh
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
export PATH="$HOME/bin:/usr/local/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"
export DEFAULT_USER="$(whoami)"
export VISUAL=vim
export EDITOR="$VISUAL"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="miloshadzic"

ZSH_DISABLE_COMPFIX=true
COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="false"

plugins=(
  docker
  git
  history
  jsontools
  vscode
  kubectl
  copyfile
  macos
  ssh-agent
)
zstyle :omz:plugins:ssh-agent agent-forwarding yes
source $ZSH/oh-my-zsh.sh

autoload -U compinit
compinit -i

# Private bin
if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

# zsh_screts is not saved to config repo and must be created
for file in ~/.{zsh_secrets,zsh_aliases}; do
  [ -r "$file" ] && source "$file"
done
unset file

# SDK Man
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Flutter
export PATH="$HOME/dev/flutter/bin:$PATH"

# Python
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="$HOME/.poetry/bin:$PATH"
export PATH=~/.local/bin:$PATH

# Java
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# Ruby
export GEM_HOME="$HOME/.gem"
export PATH="/usr/local/opt/ruby/bin:$GEM_HOME/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

# Init starship https://starship.rs/
if command -v starship 1>/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Fly
export FLYCTL_INSTALL="${HOME}/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

# Istio
export PATH=$PATH:$HOME/.istioctl/bin

# gcloud only supports python <= 3.8
export CLOUDSDK_PYTHON=~/.pyenv/versions/3.8.11/bin/python

# Enable support for new auth plugin (this will be on by default after v1.25)
export USE_GKE_GCLOUD_AUTH_PLUGIN=True

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

# GNU
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
  # Fig post block. Keep at the bottom of this file.
fi

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="$HOME/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

export PATH="$PATH:$HOME/.dotnet/tools"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('~/miniconda3/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
  eval "$__conda_setup"
else
  if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
    . "$HOME/miniconda3/etc/profile.d/conda.sh"
  else
    export PATH="$HOME/miniconda3/bin:$PATH"
  fi
fi
unset __conda_setup
# <<< conda initialize <<<

export C_INCLUDE_PATH=/opt/homebrew/Cellar/librdkafka/2.2.0/include
export LIBRARY_PATH=/opt/homebrew/Cellar/librdkafka/2.2.0/lib

export GODOT4="/Applications/Godot_mono.app/Contents/MacOS/Godot"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"

# bun completions
[ -s "${HOME}/.bun/_bun" ] && source "${HOME}/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
