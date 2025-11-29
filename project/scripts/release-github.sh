#!/bin/bash

# Automated GitHub Release Script for Axis Twelve
# Creates a GitHub release with dist folder asset using gh CLI

set -e

echo "📦 Axis Twelve GitHub Release Creator (gh CLI)"
echo "---"

# Check if GitHub CLI is installed
if ! command -v gh &> /dev/null; then
  echo "❌ Error: GitHub CLI (gh) is not installed"
  echo "Install from: https://cli.github.com/"
  exit 1
fi

# Check if authenticated with GitHub
if ! gh auth status >/dev/null 2>&1; then
  echo "❌ Error: Not authenticated with GitHub"
  echo "Run: gh auth login"
  exit 1
fi

# Check if we're in a git repository
if [ ! -d ".git" ]; then
  echo "❌ Error: Not a git repository"
  exit 1
fi

# Get version from package.json
VERSION=$(grep '"version"' package.json | head -1 | sed -E 's/.*"version":\s*"([^"]+)".*/\1/')
TAG="v$VERSION"

echo "📝 Release version: $VERSION"
echo "🏷️  Release tag: $TAG"
echo ""

# Check if tag already exists
if git rev-parse "$TAG" >/dev/null 2>&1; then
  echo "❌ Error: Tag $TAG already exists"
  exit 1
fi

# Run quality checks
echo "🔍 Running quality checks..."
pnpm check

if [ $? -ne 0 ]; then
  echo "❌ Quality checks failed"
  exit 1
fi

echo "✅ Quality checks passed"
echo ""

# Create dist tarball
echo "📦 Creating dist tarball..."
TARBALL="axis-twelve-dist-v$VERSION.tar.gz"
tar -czf "$TARBALL" dist/

if [ -f "$TARBALL" ]; then
  echo "✅ Created $TARBALL"
else
  echo "❌ Failed to create tarball"
  exit 1
fi

echo ""

# Create git tag locally
echo "🏷️  Creating git tag..."
git tag -a "$TAG" -m "Release version $VERSION

Build: dist folder included as release asset"

echo "✅ Created tag $TAG"
echo ""

# Push tag to GitHub
echo "📤 Pushing tag to GitHub..."
git push origin "$TAG"

echo "✅ Tag pushed"
echo ""

# Create GitHub release
echo "🚀 Creating GitHub release..."
gh release create "$TAG" \
  --title "Axis Twelve v$VERSION" \
  --notes-file CHANGELOG.md \
  "$TARBALL"

if [ $? -eq 0 ]; then
  echo "✅ Release created successfully"
  echo ""
  echo "📊 Release info:"
  echo "   Version: $VERSION"
  echo "   Tag: $TAG"
  echo "   Asset: $TARBALL"
  echo ""
  echo "🎉 Release available at: https://github.com/$(gh repo view --json nameWithOwner --query .nameWithOwner)/releases/tag/$TAG"
else
  echo "❌ Failed to create release"
  exit 1
fi

# Cleanup
echo ""
echo "🧹 Cleaning up tarball..."
rm -f "$TARBALL"
echo "✅ Local tarball removed (kept in GitHub release)"
