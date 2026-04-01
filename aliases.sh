alias ..='cd ..'

alias g='git'

alias l='ls -alG'

alias v='vim'
alias nv='nvim'
alias z='zed'

alias nr='npm run'
alias imps='iex -S mix phx.server'
alias m='mise'

alias c='claude'
# this unsets the env var if it exists, meaning it will use subscription by
# force, anthropics/claude-code#8327
alias cp='env -u ANTHROPIC_API_KEY claude -p'
alias cw='claude -w'
