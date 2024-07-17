BUN_INSTALL="$HOME/.bun"
PATH="$BUN_INSTALL/bin:$PATH"
ZSH_THEME="agnoster"
plugins=(git)

export PATH="$HOME/.local/bin":$PATH
export ANDROID_HOME="$HOME/Android/Sdk"
export NDK_HOME="$HOME/Android/Sdk/ndk/27.0.11718014/"
export XCURSOR_THEME="catppuccin-frappe-flamingo-cursors"
export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

eval "$(zoxide init --cmd cd zsh)"
eval $(thefuck --alias ugh)

alias clear="printf '\033[2J\033[3J\033[1;1H'"
alias notes="lvim ~/Documents/NOTES.md"
alias cat="bat"
alias dotfiles="lvim ~/.dotfiles"
