# ============================================================================
# HELP
# ============================================================================

# Show available aliases and functions
# Usage: shh
function shh() {
  cat <<'EOF'
ALIASES (aliases.zsh):
  ..          cd ..
  g           git
  imps        iex -S mix phx.server
  l           ls -alG
  nr          npm run
  nv          nvim
  v           vim
  z           zed

FUNCTIONS (functions.zsh):
  shh         this help
  shs         source shell rc file
  cdc <dir>   cd ~/.config/<dir>
  cdw [dir]   cd ~/w/[dir]
  cdg         cd ~/w/g
  myip        show local/public IPs
EOF
}

# ============================================================================
# SHELL UTILITIES
# ============================================================================

# Source the appropriate shell rc file (.zshrc or .bashrc)
# Usage: shs
function shs() {
  if [ -n "$ZSH_VERSION" ]; then
    source ~/.zshrc
  elif [ -n "$BASH_VERSION" ]; then
    source ~/.bashrc
  fi
}

# ============================================================================
# DIRECTORY NAVIGATION SHORTCUTS
# ============================================================================

# Navigate to ~/.config/<subdir>
# Usage: cdc ghostty, cdc zsh, cdc zed, etc.
function cdc() {
  cd ~/.config/"$1"
}

# Navigate to ~/w/ or ~/w/<subdir>
# Usage: cdw (goes to ~/w/) or cdw g (goes to ~/w/g/)
function cdw() {
  if [ -z "$1" ]; then
    cd ~/w
  else
    cd ~/w/"$1"
  fi
}

# Quick shortcut to ~/w/g/
# Usage: cdg
function cdg() {
  cd ~/w/g
}

# ============================================================================
# SYSTEM UTILITIES
# ============================================================================

# Show local and public IP addresses
# Usage: myip
function myip() {
  echo "Local IP:  $(ipconfig getifaddr en0 2>/dev/null || echo 'Not connected')"
  echo "Public IP: $(curl -s ifconfig.me || echo 'Not connected')"
}
