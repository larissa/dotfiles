bindkey '^[[1;3D' backward-word
bindkey '^[[1;3C' forward-word

export RIPGREP_CONFIG_PATH=$HOME/.ripgreprc
export FZF_DEFAULT_COMMAND='rg --files'
export FZF_DEFAULT_OPTS='--tiebreak=end,length,index'
