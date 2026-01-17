#!/bin/bash

# Update version in project files from package.json
# This script reads the version from package.json and updates it in README and docs

set -e

# Get version from package.json
VERSION=$(grep '"version"' package.json | head -1 | sed -E 's/.*"version":\s*"([^"]+)".*/\1/')

echo "📝 Updating version to v$VERSION in project files..."

# Update README.md version badge
sed -i "s/version-[0-9.]*-blue/version-$VERSION-blue/g" README.md

# Update version mentions in docs-viewer content
if [ -d "docs-viewer/content/docs" ]; then
    find docs-viewer/content/docs -name "*.md" -type f -exec sed -i "s/\*\*Axis Twelve v[0-9.]*\*\*/\*\*Axis Twelve v$VERSION\*\*/g" {} +
fi

echo "✅ Version updated to v$VERSION in:"
echo "   - README.md"
echo "   - docs-viewer/content/docs/*.md"
