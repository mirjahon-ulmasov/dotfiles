#!/bin/bash

# ──────────────────────────────────────────────
# Dotfiles Setup Script
# Clone this repo and run: bash setup.sh
# ──────────────────────────────────────────────

set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Setting up dotfiles from: $DOTFILES_DIR"
echo ""

# ──────────────────────────────────────────────
# Claude Code — skills & config
# ──────────────────────────────────────────────
if [ -d "$HOME/.claude" ] && [ ! -L "$HOME/.claude" ]; then
  echo "⚠️  Backing up existing ~/.claude to ~/.claude.backup"
  mv "$HOME/.claude" "$HOME/.claude.backup"
fi

ln -sf "$DOTFILES_DIR/.claude" "$HOME/.claude"
echo "✅ Claude skills linked"

# ──────────────────────────────────────────────
# Git config (uncomment if you want to manage it)
# ──────────────────────────────────────────────
# ln -sf "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"
# echo "✅ Git config linked"

# ──────────────────────────────────────────────
# Zsh config (uncomment if you want to manage it)
# ──────────────────────────────────────────────
# ln -sf "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
# echo "✅ Zsh config linked"

echo ""
echo "Done! Your skills are ready:"
echo ""
ls -1 "$HOME/.claude/skills/" | while read skill; do
  echo "  /$skill"
done
echo ""
echo "Open a new terminal and run 'claude' in any project."