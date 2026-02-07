#!/bin/bash

# Release script for Axis Twelve
# Handles version bumping, tagging, and pushing

set -e

# Ensure we're on the main branch
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [ "$CURRENT_BRANCH" != "ver-1.x" ]; then
  echo "❌ Error: You must be on the ver-1.x branch to release."
  exit 1
fi

# Ensure working directory is clean
if [ -n "$(git status --porcelain)" ]; then
  echo "❌ Error: Working directory is not clean. Commit or stash your changes."
  exit 1
fi

# Get bump type from argument
BUMP_TYPE=$1
if [[ ! "$BUMP_TYPE" =~ ^(patch|minor|major)$ ]]; then
  echo "Usage: $0 {patch|minor|major}"
  exit 1
fi

# Get current version
OLD_VERSION=$(node -p "require('./package.json').version")

echo "📦 Releasing Axis Twelve..."
echo "Current version: $OLD_VERSION"
echo "Bump type: $BUMP_TYPE"

# Bump version in package.json
pnpm version $BUMP_TYPE --no-git-tag-version
NEW_VERSION=$(node -p "require('./package.json').version")

echo "📝 Version bumped: $OLD_VERSION → $NEW_VERSION"

# Update version in HTML files
bash project/scripts/update-version.sh

# Commit and tag
git add package.json index.html docs/index.html docs/getting-started.md
git commit -m "chore: release v$NEW_VERSION"
git tag -a "v$NEW_VERSION" -m "Release v$NEW_VERSION"

echo "✅ Created commit and tag v$NEW_VERSION"

# Prompt to push
read -p "🚀 Ready to push to origin? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  git push origin ver-1.x --tags
  echo "🎉 Pushed to origin successfully!"
else
  echo "⚠️  Push skipped. You can push manually with: git push origin ver-1.x --tags"
fi
