# utils
alias ..='cd ..'
alias l='ls -alG'

# git
alias g='git'

# tools
alias v='vim'
alias nv='nvim'
alias z='zed'
alias m='mise'
alias sb='supabase'
alias sbsa='supabase stop --all'

# langs
alias nr='npm run'
alias imps='iex -S mix phx.server'

# ais
alias c='claude'
alias cad='claude --allow-dangerously-skip-permissions'
# this unsets the env var if it exists, meaning it will use subscription by
# force, anthropics/claude-code#8327
alias cp='env -u ANTHROPIC_API_KEY claude -p'
alias cadp='env -u ANTHROPIC_API_KEY cad -p'
alias cw='claude -w'
