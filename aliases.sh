# utils
alias ..='cd ..'
alias l='ls -alG'

# git
alias g='git'

# tools
alias lb='libry'
alias m='mise'
alias mr='mise run'
alias sb='supabase'
alias sbsa='supabase stop --all'
alias sp='sprite'
alias v='vim'
alias nv='nvim'
alias z='zed'

# langs
alias nr='npm run'
alias imps='iex -S mix phx.server'

# ais
alias c='claude'
alias cad='claude --allow-dangerously-skip-permissions'
# `-u` unsets the env var if it exists, meaning it will use subscription by
# force, anthropics/claude-code#8327
alias cadp='env -u ANTHROPIC_API_KEY cad -p'
alias cw='claude -w'
