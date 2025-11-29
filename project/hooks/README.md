# Git Hooks

This directory contains git hooks that automate development tasks for Axis Twelve.

## Available Hooks

### pre-commit
Automatically bumps the patch version in `package.json` when SCSS files are committed.

**Trigger:** Detects staged `.scss` files
**Action:** Increments patch version (e.g., 0.0.1 → 0.0.2) and stages the updated package.json

### pre-push
Validates that CHANGELOG is updated when pushing version changes.

**Trigger:** Before pushing commits to remote
**Action:** Checks if CHANGELOG.md or version-specific files have been updated
**Blocks Push If:**
- package.json version changed in commits
- But neither CHANGELOG.md nor project/docs/changelog/v*.md were updated

**Error Message Example:**
```
❌ Error: Version changed but CHANGELOG not updated!

You must update one of the following:
  1. CHANGELOG.md - Main changelog overview
  2. project/docs/changelog/v0.0.3.md - Version-specific changelog
```

## Installation

Hooks are automatically installed when you run `pnpm install` after cloning the repository.

To manually install hooks:
```bash
bash project/scripts/install-hooks.sh
```

## Manual Setup (if needed)

If hooks don't install automatically:
```bash
# From the project root
cp project/hooks/* .git/hooks/
chmod +x .git/hooks/*
```

## How It Works

### pre-commit Hook
When you commit with staged SCSS files:
```bash
git add src/scss/style.scss
git commit -m "Update styles"
```

The pre-commit hook will:
1. Detect the SCSS changes
2. Parse the current version from package.json
3. Increment the patch version
4. Update package.json
5. Stage the version bump
6. Allow the commit to proceed with both files updated

### pre-push Hook
When you push commits with version changes:
```bash
# After version bump from pre-commit hook
git push origin main
```

The pre-push hook will:
1. Detect if package.json version changed in commits
2. Check if CHANGELOG.md was updated
3. Check if any version-specific changelog files were updated
4. **Block the push** if version changed but changelog wasn't updated
5. Allow the push if changelog is properly updated

## Disabling Hooks

To skip hooks for a specific commit:
```bash
git commit --no-verify -m "Skip hooks"
```

To skip pre-push validation:
```bash
git push --no-verify origin main
```

To disable a hook temporarily, rename it:
```bash
mv .git/hooks/pre-commit .git/hooks/pre-commit.disabled
mv .git/hooks/pre-push .git/hooks/pre-push.disabled
```
