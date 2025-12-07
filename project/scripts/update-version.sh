#!/bin/bash

# Update version in HTML files from package.json
# This script reads the version from package.json and updates it in index.html and docs/index.html

set -e

# Get version from package.json
VERSION=$(grep '"version"' package.json | head -1 | sed -E 's/.*"version":\s*"([^"]+)".*/\1/')

echo "📝 Updating version to v$VERSION in HTML files..."

# Update main index.html
sed -i "s/<small style=\"font-size: 0.5em; opacity: 0.8;\">v[0-9.]*<\/small>/<small style=\"font-size: 0.5em; opacity: 0.8;\">v$VERSION<\/small>/g" index.html

# Update docs/index.html
sed -i "s/<small>v[0-9.]* | Documentation<\/small>/<small>v$VERSION | Documentation<\/small>/g" docs/index.html

# Update docs/getting-started.md
sed -i "s/\*\*Axis Twelve v[0-9.]*\*\*/\*\*Axis Twelve v$VERSION\*\*/g" docs/getting-started.md

echo "✅ Version updated to v$VERSION in:"
echo "   - index.html"
echo "   - docs/index.html"
echo "   - docs/getting-started.md"
