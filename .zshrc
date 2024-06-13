autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

autoload -U colors && colors
PS1="$ \
%{$fg[green]%}\
Luma\
%{$reset_color%}\
 (\
%{$fg[magenta]%}\
%T\
%{$reset_color%}\
)\
%{$fg[yellow]%}\
 %~ \
%{$reset_color%}\
%% \
"

BUN_INSTALL="$HOME/.bun"
PATH="$BUN_INSTALL/bin:$PATH"

export PATH="$HOME/.local/bin":$PATH
export ANDROID_HOME="$HOME/Android/Sdk"
export NDK_HOME="$HOME/Android/Sdk/ndk/27.0.11718014/"
