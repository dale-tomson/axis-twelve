#!/bin/bash

# Git Release Script for Axis Twelve
# Creates a GitHub release with dist folder as a tarball asset

set -e

echo "📦 Axis Twelve Git Release Creator"
echo "---"

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

# Create git tag
echo "🏷️  Creating git tag..."
git tag -a "$TAG" -m "Release version $VERSION

## Changes
- Build dist folder included as release asset
- CSS compiled and minified
- Ready for production use

Dist asset: $TARBALL"

echo "✅ Created tag $TAG"
echo ""

# Display next steps
echo "📤 Next steps:"
echo "   1. Push the tag: git push origin $TAG"
echo "   2. Create GitHub release with:"
echo "      - Title: Axis Twelve v$VERSION"
echo "      - Attach: $TARBALL"
echo ""
echo "   Or if you have GitHub CLI installed, run:"
echo "   gh release create $TAG --title 'Axis Twelve v$VERSION' -F CHANGELOG.md $TARBALL"
echo ""
echo "✅ Tag created locally. Push with: git push origin $TAG"
