# ============================================================================
# HELP
# ============================================================================

# Show available aliases and functions
# Usage: dzh
function dzh() {
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
  dzh         this help
  cdc <dir>   cd ~/.config/<dir>
  cdw [dir]   cd ~/w/[dir]
  cdg         cd ~/w/g
  ports       show listening ports
  portdetails show listening ports with parent process info
  myip        show local/public IPs
  rat         output all git-tracked files with line numbers
  airat       output all git-tracked files with AI-friendly context header
EOF
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

# Show what's listening on which ports
# Usage: ports
function ports() {
  lsof -iTCP -sTCP:LISTEN -n -P | awk 'NR==1 || /LISTEN/'
}

# Show detailed port info including parent processes
# Usage: portdetails
function portdetails() {
  echo "Listening ports:"
  ports
  echo ""
  echo "Parent processes:"
  lsof -iTCP -sTCP:LISTEN -n -P | awk 'NR>1 {print $2}' | sort -u | while read pid; do
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    ps -fp "$pid"
  done
}

# Show local and public IP addresses
# Usage: myip
function myip() {
  echo "Local IP:  $(ipconfig getifaddr en0 2>/dev/null || echo 'Not connected')"
  echo "Public IP: $(curl -s ifconfig.me || echo 'Not connected')"
}

# Output all git-tracked files with line numbers in XML format
# Usage: rat
function rat() {
  git ls-files | while read file; do
    echo "<document path=\"$file\">"
    nl -ba "$file"
    echo "</document>"
  done
}

# Output all git-tracked files with AI-friendly context header
# Usage: airat
function airat() {
  cat << EOF
The complete codebase is provided below in XML format.
Answer the following question using ONLY the code provided, do not use any tools.
Everything you need is in this context.

$(rat)
EOF
}
