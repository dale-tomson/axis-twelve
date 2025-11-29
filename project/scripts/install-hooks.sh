#!/bin/bash

# Install git hooks for Axis Twelve development

HOOKS_DIR="project/hooks"
GIT_HOOKS_DIR=".git/hooks"

if [ ! -d "$HOOKS_DIR" ]; then
  echo "❌ Error: project/hooks directory not found"
  exit 1
fi

if [ ! -d "$GIT_HOOKS_DIR" ]; then
  echo "❌ Error: .git/hooks directory not found"
  exit 1
fi

echo "📦 Installing git hooks..."

# Copy hooks
for hook in $HOOKS_DIR/*; do
  hook_name=$(basename "$hook")
  cp "$hook" "$GIT_HOOKS_DIR/$hook_name"
  chmod +x "$GIT_HOOKS_DIR/$hook_name"
  echo "✅ Installed $hook_name"
done

echo "🎉 All hooks installed successfully"
