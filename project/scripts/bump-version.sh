#!/bin/bash

# Bump version helper for Axis Twelve
# This script bumps the version in package.json and updates all references

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

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

# Check if npm is available
if ! command -v npm &> /dev/null; then
  error "npm is required but not installed"
fi

# Get current version
CURRENT_VERSION=$(node -p "require('./package.json').version" 2>/dev/null) || error "Failed to read current version"

info "Current version: v$CURRENT_VERSION"

# Determine new version
if [ -z "$1" ]; then
  echo "Available version bumps:"
  echo "  patch - Bug fix (2.0.2 -> 2.0.3)"
  echo "  minor - New features (2.0.2 -> 2.1.0)"
  echo "  major - Breaking changes (2.0.2 -> 3.0.0)"
  echo "  <version> - Specific version (e.g., 2.1.0)"
  echo ""
  read -p "Enter version bump type or specific version: " VERSION_INPUT
else
  VERSION_INPUT="$1"
fi

# Calculate new version
case "$VERSION_INPUT" in
  patch)
    NEW_VERSION=$(npm version patch --no-git-tag-version 2>/dev/null) || error "Failed to bump patch version"
    ;;
  minor)
    NEW_VERSION=$(npm version minor --no-git-tag-version 2>/dev/null) || error "Failed to bump minor version"
    ;;
  major)
    NEW_VERSION=$(npm version major --no-git-tag-version 2>/dev/null) || error "Failed to bump major version"
    ;;
  *)
    # Validate semver format
    if [[ ! $VERSION_INPUT =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
      error "Invalid version format: $VERSION_INPUT (expected semver format X.Y.Z)"
    fi
    # Set specific version using npm
    NEW_VERSION=$(npm version "$VERSION_INPUT" --no-git-tag-version 2>/dev/null) || error "Failed to set version to $VERSION_INPUT"
    ;;
esac

NEW_VERSION=$(node -p "require('./package.json').version" 2>/dev/null) || error "Failed to read new version"

success "Bumped version to v$NEW_VERSION"

# Run update-version script to sync all files
if [ -f "project/scripts/update-version.sh" ]; then
  info "Updating version references across the project..."
  bash project/scripts/update-version.sh
fi

info "Next steps:"
echo "  1. Update CHANGELOG.md with changes for v$NEW_VERSION"
echo "  2. Commit the version bump: git add . && git commit -m \"Bump version to v$NEW_VERSION\""
echo "  3. Push to trigger auto-tag workflow: git push"
echo ""
echo "  Or use git directly:"
echo "  git add package.json && git commit -m \"Bump version to v$NEW_VERSION\" && git push"
