# Git Hooks

This directory contains git hooks that automate development tasks for Axis Twelve.

## Available Hooks

### pre-commit
Automatically bumps the patch version in `package.json` when SCSS files are committed.

**Trigger:** Detects staged `.scss` files
**Action:** Increments patch version (e.g., 0.0.1 → 0.0.2) and stages the updated package.json

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

## Disabling Hooks

To skip hooks for a specific commit:
```bash
git commit --no-verify -m "Skip hooks"
```

To disable a hook temporarily, rename it:
```bash
mv .git/hooks/pre-commit .git/hooks/pre-commit.disabled
```
