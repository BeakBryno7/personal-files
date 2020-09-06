# Sourcing Powerlevel10k
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Gitstatusd
POWERLEVEL9K_DISABLE_GITSTATUS=true

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=$HOME/.oh-my-zsh

plugins=(git adb pip)
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Fuzzy search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init script doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen load oh-my-zsh
  # Fish-like autosuggestions for zsh
  zgen load zsh-users/zsh-history-substring-search
  # Includes syntax highlighting
  zgen load zsh-users/zsh-syntax-highlighting
  #Zsh Completions
  zgen load zsh-users/zsh-completions
  # Enhancd
  zgen load b4b4r07/enhancd
  # Auto-pair
  zgen load hlissner/zsh-autopair

  # generate the init script from plugins above
  zgen save
fi

# Alias
alias ls='colorls -a'
alias lt='colorls --tree'
