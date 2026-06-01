#!/usr/bin/env bash
# SnipTrace installer
# https://sniptrace.com

set -e

VERSION="1.1.0"
INSTALL_DIR="${SNIPTRACE_INSTALL_DIR:-/usr/local/bin}"
BIN="$INSTALL_DIR/sniptrace"

echo "Installing SnipTrace $VERSION..."

# Fetch the binary
if command -v curl &>/dev/null; then
  curl -fsSL "https://sniptrace.com/sniptrace.sh" -o "$BIN"
elif command -v wget &>/dev/null; then
  wget -qO "$BIN" "https://sniptrace.com/sniptrace.sh"
else
  echo "Error: curl or wget required" >&2
  exit 1
fi

chmod +x "$BIN"

echo "sniptrace $VERSION installed to $BIN"
echo ""
echo "Next steps:"
echo "  sniptrace init          # add AGENTS.md to your project (tells AI agents to use sniptrace)"
echo "  sniptrace shell-init    # wrap noisy commands in your shell so they filter automatically"
