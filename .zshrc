# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

# Add powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions

# Load completions
autoload -U compinit && compinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keybindings
bindkey -e

export EDITOR=nvim
export XDG_CONFIG_HOME=$HOME/.config

# Add to path
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$XDG_CONFIG_HOME/tmux/plugins/tmuxifier/bin

# Tmuxifier
eval "$(tmuxifier init -)"
export TMUXIFIER_LAYOUT_PATH="$XDG_CONFIG_HOME/tmux/layouts"

# Zoxide
eval "$(zoxide init zsh)"

# rootless docker
export DOCKER_HOST=unix:///run/user/1000/docker.sock

# Aliases
alias k='kubectl'
alias kind='sudo kind'
alias argo='sudo argo'
alias py='python3'
alias dc='sudo docker compose'
alias vim='nvim'
alias clr='clear'
alias c='z'

