#!/bin/bash

# Update version in project files from package.json
# This script reads the version from package.json and updates it in README and docs

set -e

# Get version from package.json
VERSION=$(grep '"version"' package.json | head -1 | sed -E 's/.*"version":\s*"([^"]+)".*/\1/')

echo "📝 Updating version to v$VERSION in project files..."

# Update README.md version badge
sed -i "s/version-[0-9.]*-blue/version-$VERSION-blue/g" README.md

# Update root index.html if it exists
if [ -f "index.html" ]; then
  sed -i "s/v[0-9]\+\.[0-9]\+\.[0-9]\+/v$VERSION/g" index.html
fi

# Update version in docs
if [ -d "docs" ]; then
    find docs -name "*.md" -type f -exec sed -i "s/\*\*Axis Twelve v[0-9.]*\*\*/\*\*Axis Twelve v$VERSION\*\*/g" {} +
fi

echo "✅ Version updated to v$VERSION in:"
echo "   - README.md"
echo "   - index.html (if exists)"
echo "   - docs/*.md"
