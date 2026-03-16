#!/bin/bash

# Update version in project files from package.json
# This script reads the version from package.json and updates it in README and docs

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Helper functions
error() {
  echo -e "${RED}❌ Error: $1${NC}" >&2
  exit 1
}

success() {
  echo -e "${GREEN}✅ $1${NC}"
}

info() {
  echo -e "${YELLOW}📝 $1${NC}"
}

# Validate package.json exists
if [ ! -f "package.json" ]; then
  error "package.json not found in current directory"
fi

# Get version from package.json
VERSION=$(node -p "require('./package.json').version" 2>/dev/null) || error "Failed to read version from package.json"

# Validate version format (semver)
if [[ ! $VERSION =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  error "Invalid version format: $VERSION (expected semver format X.Y.Z)"
fi

info "Updating version to v$VERSION in project files..."

# Update README.md version badge
if [ -f "README.md" ]; then
  if grep -q "version-" README.md; then
    sed -i "s/version-[0-9.]*-blue/version-$VERSION-blue/g" README.md
    success "Updated README.md version badge"
  else
    info "README.md exists but no version badge found"
  fi
else
  info "README.md not found, skipping badge update"
fi

# Update root index.html if it exists
if [ -f "index.html" ]; then
  sed -i "s/v[0-9]\+\.[0-9]\+\.[0-9]\+/v$VERSION/g" index.html
  success "Updated index.html version"
fi

# Update version in docs
if [ -d "docs" ]; then
  DOCS_UPDATED=0
  while IFS= read -r file; do
    if [ -n "$file" ]; then
      sed -i "s/\*\*Axis Twelve v[0-9.]*\*\*/\*\*Axis Twelve v$VERSION\*\*/g" "$file"
      DOCS_UPDATED=$((DOCS_UPDATED + 1))
    fi
  done < <(find docs -name "*.md" -type f 2>/dev/null)
  
  if [ $DOCS_UPDATED -gt 0 ]; then
    success "Updated version in $DOCS_UPDATED documentation file(s)"
  fi
fi

# Update CHANGELOG.md if it exists and has old version
if [ -f "CHANGELOG.md" ]; then
  if grep -q "## \[2\." CHANGELOG.md; then
    info "CHANGELOG.md contains version references - manual review recommended"
  fi
fi

success "Version updated to v$VERSION in:"
echo " - README.md (if exists)"
echo " - index.html (if exists)"
echo " - docs/*.md (if exists)"
echo ""
info "Remember to update CHANGELOG.md with the new version"
