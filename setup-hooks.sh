#!/bin/bash

# Setup script to install git hooks for Axis Twelve development

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
GIT_HOOKS_DIR="$SCRIPT_DIR/.git/hooks"

echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║              GIT HOOKS SETUP FOR AXIS TWELVE                   ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}\n"

# Check if .git/hooks directory exists
if [ ! -d "$GIT_HOOKS_DIR" ]; then
    echo -e "${RED}✗ Not a git repository or .git/hooks not found${NC}"
    exit 1
fi

echo -e "${YELLOW}Installing git hooks...${NC}\n"

# List of hooks to enable
HOOKS=("pre-push")

for hook in "${HOOKS[@]}"; do
    HOOK_FILE="$GIT_HOOKS_DIR/$hook"
    
    if [ -f "$HOOK_FILE" ]; then
        if [ -x "$HOOK_FILE" ]; then
            echo -e "${GREEN}✓ $hook${NC} - Already installed and executable"
        else
            chmod +x "$HOOK_FILE"
            echo -e "${GREEN}✓ $hook${NC} - Made executable"
        fi
    else
        echo -e "${RED}✗ $hook${NC} - Not found"
    fi
done

echo -e "\n${GREEN}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║                  ✓ HOOKS INSTALLED                             ║${NC}"
echo -e "${GREEN}╚════════════════════════════════════════════════════════════════╝${NC}\n"

echo -e "${YELLOW}Git hooks are now active:${NC}\n"
echo -e "  ${BLUE}pre-push${NC} - Runs before 'git push'"
echo -e "    • Auto-detects version bump from commit message"
echo -e "    • Updates package.json version automatically"
echo -e "    • Runs quality checks (lint + build)"
echo -e "    • Prevents push if checks fail\n"

echo -e "${YELLOW}Commit message keywords for auto-versioning:${NC}"
echo -e "  ${BLUE}MAJOR${NC}:  breaking change, major"
echo -e "  ${BLUE}MINOR${NC}:  feature, add, new, minor"
echo -e "  ${BLUE}PATCH${NC}:  fix, bug, hotfix, patch\n"

echo -e "${YELLOW}Example workflow:${NC}"
echo -e "  git add ."
echo -e "  git commit -m 'Add new grid feature (minor)'"
echo -e "  git push  # Hook auto-updates to v1.1.0 if current is v1.0.0\n"

echo -e "${YELLOW}To bypass hooks (not recommended):${NC}"
echo -e "  git push --no-verify\n"

echo -e "${GREEN}Setup complete!${NC}"
