if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

BUN_INSTALL="$HOME/.bun"
PATH="$BUN_INSTALL/bin:$PATH"
ZSH_THEME="agnoster"
plugins=(
  git
  zsh-autosuggestions
)

PATH="$PATH:$HOME/Downloads/elixir-1.17.2/bin"

. /opt/asdf-vm/asdf.sh

export PATH="$HOME/.local/bin":$PATH
export ANDROID_HOME="$HOME/Android/Sdk"
export NDK_HOME="$HOME/Android/Sdk/ndk/27.0.11718014/"
export PATH="$HOME/Android/Sdk/platform-tools:$PATH"
export XCURSOR_THEME="catppuccin-frappe-flamingo-cursors"
export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

eval "$(zoxide init --cmd cd zsh)"
eval $(thefuck --alias ugh)

alias clear="printf '\033[2J\033[3J\033[1;1H'"
alias notes="lvim ~/Documents/NOTES.md"
alias cat="bat"
source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/powerlevel10k/powerlevel10k.zsh-theme

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
