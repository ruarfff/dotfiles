export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"
export DEFAULT_USER="$(whoami)"
export VISUAL=vim
export EDITOR="$VISUAL"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

ZSH_DISABLE_COMPFIX=true
COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="true"

plugins=(
  git
  history
  jsontools
  vscode
  kubectl
)

source $ZSH/oh-my-zsh.sh


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
export PATH=$(pyenv root)/shims:$PATH
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Java
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# Ruby
export GEM_HOME="$HOME/.gem"
export PATH="/usr/local/opt/ruby/bin:$GEM_HOME/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi


