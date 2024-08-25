if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

plugins=(
  git
  zsh-autosuggestions
)

BUN_INSTALL="$HOME/.bun"
PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/.local/bin":$PATH
export ANDROID_HOME="$HOME/Android/Sdk"
export NDK_HOME="$HOME/Android/Sdk/ndk/27.0.11718014/"
export PATH="$HOME/Android/Sdk/platform-tools:$PATH"
export XCURSOR_THEME="catppuccin-frappe-flamingo-cursors"
export ZSH="$HOME/.oh-my-zsh"

eval "$(zoxide init --cmd cd zsh)"

alias clear="printf '\033[2J\033[3J\033[1;1H'"
alias notes="lvim ~/Documents/NOTES.md"
alias cat="bat"

source $ZSH/oh-my-zsh.sh
source ~/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

. /opt/asdf-vm/asdf.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
