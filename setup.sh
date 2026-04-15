#!/bin/bash

# ──────────────────────────────────────────────
# Dotfiles Setup Script (Mac / Linux)
# Run: bash setup.sh
# ──────────────────────────────────────────────

set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Setting up dotfiles from: $DOTFILES_DIR"
echo ""

# ──────────────────────────────────────────────
# Claude Code — skills
# ──────────────────────────────────────────────
mkdir -p "$HOME/.claude"

# Remove old skills and copy fresh
rm -rf "$HOME/.claude/skills"
cp -r "$DOTFILES_DIR/.claude/skills" "$HOME/.claude/skills"

echo "✅ Claude skills copied"

echo ""
echo "Your skills:"
echo ""
ls -1 "$HOME/.claude/skills/" | while read skill; do
  echo "  /$skill"
done
echo ""
echo "Open a new terminal and run 'claude' in any project."