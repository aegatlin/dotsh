# ============================================================================
# HELP
# ============================================================================

# Show available aliases and functions
# Usage: shh
function shh() {
  echo "ALIASES (aliases.sh):"
  sed -n "s/^alias \([^=]*\)='\(.*\)'/  printf '  %-12s%s\\n' '\1' '\2'/p" ~/.config/sh/aliases.sh | sh
  cat <<'EOF'

FUNCTIONS (functions.sh):
  shh         this help
  shs         source shell rc file
  cdc <dir>   cd ~/.config/<dir>
  cdw [dir]   cd ~/w/[dir]
  cdg [dir]   cd ~/w/g/[dir]
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

# Navigate to ~/w/g/ or ~/w/g/<subdir>
# Usage: cdg (goes to ~/w/g/) or cdg f (goes to ~/w/g/f/)
function cdg() {
  if [ -z "$1" ]; then
    cd ~/w/g
  else
    cd ~/w/g/"$1"
  fi
}

