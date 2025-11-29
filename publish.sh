#!/bin/bash

# Axis Twelve - NPM Publishing Script
# This script safely publishes the package to npm registry with proper validation

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ENV_FILE="$SCRIPT_DIR/.env"
PACKAGE_JSON="$SCRIPT_DIR/package.json"

echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║              AXIS TWELVE - NPM PUBLISHING SCRIPT                ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}\n"

# Function to print section headers
print_section() {
    echo -e "\n${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${YELLOW}$1${NC}"
    echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"
}

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check prerequisites
print_section "1. Checking Prerequisites"

if ! command_exists npm; then
    echo -e "${RED}✗ npm is not installed${NC}"
    exit 1
fi
echo -e "${GREEN}✓ npm is installed ($(npm --version))${NC}"

if ! command_exists git; then
    echo -e "${RED}✗ git is not installed${NC}"
    exit 1
fi
echo -e "${GREEN}✓ git is installed${NC}"

if ! [ -f "$PACKAGE_JSON" ]; then
    echo -e "${RED}✗ package.json not found at $PACKAGE_JSON${NC}"
    exit 1
fi
echo -e "${GREEN}✓ package.json found${NC}"

# Get package info
PACKAGE_NAME=$(grep '"name"' "$PACKAGE_JSON" | head -1 | sed 's/.*"name": "\([^"]*\)".*/\1/')
PACKAGE_VERSION=$(grep '"version"' "$PACKAGE_JSON" | head -1 | sed 's/.*"version": "\([^"]*\)".*/\1/')

echo -e "\n${BLUE}Package Information:${NC}"
echo "  Name:    $PACKAGE_NAME"
echo "  Version: $PACKAGE_VERSION"

# Check environment
print_section "2. Checking Environment"

if [ ! -f "$ENV_FILE" ]; then
    echo -e "${YELLOW}⚠ .env file not found${NC}"
    echo -e "Creating .env from .env.example...\n"
    
    if [ -f "$SCRIPT_DIR/.env.example" ]; then
        cp "$SCRIPT_DIR/.env.example" "$ENV_FILE"
        echo -e "${YELLOW}⚠ Please edit .env and add your NPM_TOKEN${NC}"
        echo -e "   Editor command: nano $ENV_FILE"
        exit 1
    else
        echo -e "${RED}✗ .env.example not found${NC}"
        exit 1
    fi
fi

# Load environment variables
set +e
source "$ENV_FILE"
set -e

if [ -z "$NPM_TOKEN" ] || [ "$NPM_TOKEN" = "your_npm_token_here" ]; then
    echo -e "${RED}✗ NPM_TOKEN not configured in .env${NC}"
    echo -e "\n${YELLOW}To configure:${NC}"
    echo "  1. Get token: https://www.npmjs.com/settings/~/tokens"
    echo "  2. Edit .env file: nano $ENV_FILE"
    echo "  3. Set NPM_TOKEN=your_actual_token"
    echo "  4. Run this script again"
    exit 1
fi
echo -e "${GREEN}✓ NPM_TOKEN configured${NC}"

# Check git status
print_section "3. Checking Git Status"

if ! git -C "$SCRIPT_DIR" rev-parse --git-dir > /dev/null 2>&1; then
    echo -e "${RED}✗ Not a git repository${NC}"
    exit 1
fi
echo -e "${GREEN}✓ Git repository detected${NC}"

# Check for uncommitted changes
if ! git -C "$SCRIPT_DIR" diff-index --quiet HEAD --; then
    echo -e "${RED}✗ Uncommitted changes detected${NC}"
    echo -e "\n${YELLOW}Please commit all changes:${NC}"
    git -C "$SCRIPT_DIR" status
    exit 1
fi
echo -e "${GREEN}✓ No uncommitted changes${NC}"

CURRENT_BRANCH=$(git -C "$SCRIPT_DIR" rev-parse --abbrev-ref HEAD)
echo -e "${GREEN}✓ Current branch: $CURRENT_BRANCH${NC}"

# Run quality checks
print_section "4. Running Quality Checks"

if ! pnpm check > /dev/null 2>&1; then
    echo -e "${RED}✗ Quality checks failed (pnpm check)${NC}"
    echo -e "${YELLOW}Running pnpm check for details:${NC}\n"
    pnpm check
    exit 1
fi
echo -e "${GREEN}✓ Quality checks passed (lint + build)${NC}"

# Verify package contents
print_section "5. Verifying Package Contents"

if npm pack --dry-run > /tmp/npm-pack.txt 2>&1; then
    TARBALL_SIZE=$(grep "package size:" /tmp/npm-pack.txt | awk '{print $3 " " $4}')
    UNPACKED_SIZE=$(grep "unpacked size:" /tmp/npm-pack.txt | awk '{print $3 " " $4}')
    TOTAL_FILES=$(grep "total files:" /tmp/npm-pack.txt | awk '{print $3}')
    
    echo -e "${GREEN}✓ Package contents verified${NC}"
    echo -e "\n${BLUE}Package Details:${NC}"
    echo "  Tarball Size:   $TARBALL_SIZE"
    echo "  Unpacked Size:  $UNPACKED_SIZE"
    echo "  Total Files:    $TOTAL_FILES"
else
    echo -e "${RED}✗ Failed to verify package contents${NC}"
    exit 1
fi

# Confirm before publishing
print_section "6. Confirmation"

echo -e "${BLUE}Ready to publish:${NC}"
echo "  Package: $PACKAGE_NAME@$PACKAGE_VERSION"
echo "  Branch:  $CURRENT_BRANCH"
echo -e "\n${YELLOW}This action will:${NC}"
echo "  1. Authenticate with npm using your token"
echo "  2. Upload package to npm registry"
echo "  3. Make it publicly available"

read -p "Continue with publishing? (yes/no): " -r CONFIRM
echo

if [[ ! "$CONFIRM" =~ ^[Yy][Ee][Ss]$ ]]; then
    echo -e "${YELLOW}Publishing cancelled${NC}"
    exit 0
fi

# Publish to npm
print_section "7. Publishing to NPM"

# Create temporary .npmrc with token
TEMP_NPMRC=$(mktemp)
trap "rm -f $TEMP_NPMRC" EXIT

echo "//registry.npmjs.org/:_authToken=$NPM_TOKEN" > "$TEMP_NPMRC"
echo "registry=https://registry.npmjs.org/" >> "$TEMP_NPMRC"

# Publish with temporary .npmrc
HOME_BACKUP="$HOME"
export HOME=$(mktemp -d)
cp "$TEMP_NPMRC" "$HOME/.npmrc"
chmod 600 "$HOME/.npmrc"

if npm publish --registry https://registry.npmjs.org/; then
    echo -e "\n${GREEN}╔════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}║            ✓ SUCCESSFULLY PUBLISHED TO NPM REGISTRY              ║${NC}"
    echo -e "${GREEN}╚════════════════════════════════════════════════════════════════╝${NC}\n"
    
    echo -e "${BLUE}Package is now available at:${NC}"
    echo -e "  ${GREEN}https://www.npmjs.com/package/$PACKAGE_NAME${NC}\n"
    
    echo -e "${BLUE}Installation command:${NC}"
    echo -e "  ${GREEN}npm install $PACKAGE_NAME${NC}\n"
    
    echo -e "${BLUE}Next steps:${NC}"
    echo "  1. Verify publication: npm view $PACKAGE_NAME"
    echo "  2. Tag release in git: git tag v$PACKAGE_VERSION"
    echo "  3. Push tags: git push --tags"
    
else
    echo -e "${RED}✗ Publishing failed${NC}"
    exit 1
fi

# Cleanup
rm -rf "$HOME"
export HOME="$HOME_BACKUP"
rm -f "$TEMP_NPMRC"
