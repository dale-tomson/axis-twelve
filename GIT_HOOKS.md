# Git Hooks Documentation

Axis Twelve uses automated git hooks to streamline the development workflow.

## Available Hooks

### pre-push
**Runs before:** `git push`

**Functionality:**
- Detects version bump from commit message keywords
- Auto-updates `package.json` version
- Runs quality checks (lint + build)
- Prevents push if checks fail

## Setup

### First Time Setup
```bash
bash setup-hooks.sh
```

This will:
- ✓ Verify hooks are installed
- ✓ Make hooks executable
- ✓ Display configuration info

### Manual Activation
If you need to manually enable a hook:
```bash
chmod +x .git/hooks/pre-push
```

## Using the Pre-Push Hook

### Interactive Version Confirmation

The hook **always asks for confirmation** about the version type before pushing.

**Two scenarios:**

#### Scenario 1: Keywords detected in commit message
The hook suggests a version type based on keywords:

```
Version Type Confirmation
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Detected from commit message:

  FEATURE (minor) - New features

Is this correct?
  y) Yes, continue
  c) Change manually
  n) Skip version bump

Select (y/c/n): y
```

You can:
- **y** - Confirm and proceed with detected type
- **c** - Change to a different version type
- **n** - Skip version bump entirely

#### Scenario 2: No keywords detected
The hook asks you to select the version type:

```
Version Type Confirmation
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

⚠ No version keywords detected in commit message

Is this a breaking change, new feature, or bug fix?
  1) BREAKING - Breaking changes (major)
  2) FEATURE  - New features (minor)
  3) FIX      - Bug fixes (patch)
  4) SKIP    - Skip version bump

Select (1/2/3/4): 2
```

### Version Bump Types

The hook detects version bumps from commit message keywords:

#### MAJOR Version (Breaking Changes)
```bash
git commit -m "Refactor grid system (breaking change)"
# or
git commit -m "Complete rewrite of flexbox utilities (major)"
```
Current: `1.0.0` → New: `2.0.0`

#### MINOR Version (New Features)
```bash
git commit -m "Add new spacing utility (feature)"
# or
git commit -m "Implement new grid layout system (minor)"
```
Current: `1.0.0` → New: `1.1.0`

#### PATCH Version (Bug Fixes)
```bash
git commit -m "Fix grid gap calculation (bug fix)"
# or
git commit -m "Hotfix for centering utilities (patch)"
```
Current: `1.0.0` → New: `1.0.1`

### Typical Workflow

```bash
# 1. Make changes
nano src/scss/_grid.scss

# 2. Run checks locally (optional)
pnpm check

# 3. Stage and commit with keyword
git add .
git commit -m "Add responsive gap sizes (feature)"

# 4. Push - hook runs and asks for confirmation
git push
# Output:
# Version Type Confirmation
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# Detected from commit message:
#   FEATURE (minor) - New features
# Is this correct?
#   y) Yes, continue
#   c) Change manually
#   n) Skip version bump
# Select (y/c/n): y
#
# Updating version: 1.0.0 → 1.1.0 (FEATURE)
# ✓ Updated version: 1.0.0 → 1.1.0
# ✓ Quality checks passed
# ✓ Ready to push
```

## Keywords for Version Detection

### MAJOR Keywords
- `breaking change`
- `breaking changes`
- `major`

### MINOR Keywords
- `feature`
- `add`
- `new`
- `minor`

### PATCH Keywords
- `fix`
- `bug`
- `hotfix`
- `patch`

**Note:** Keywords are case-insensitive

## Quality Checks

Before allowing a push, the pre-push hook runs:
```bash
pnpm check
```

This runs:
1. **Linting** - `pnpm lint` (stylelint)
2. **Build** - `pnpm build` (sass compilation)

If either fails, the push is cancelled.

## No Version Keywords Detected

If the commit message doesn't contain version keywords, the hook asks you to manually select:

```
Version Type Confirmation
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

⚠ No version keywords detected in commit message

Is this a breaking change, new feature, or bug fix?
  1) BREAKING - Breaking changes (major)
  2) FEATURE  - New features (minor)
  3) FIX      - Bug fixes (patch)
  4) SKIP    - Skip version bump

Select (1/2/3/4): 
```

You can choose:
- `1` for BREAKING (major version bump)
- `2` for FEATURE (minor version bump)
- `3` for FIX (patch version bump)
- `4` to skip version update entirely

## Bypassing Hooks

**Not recommended**, but if needed:
```bash
git push --no-verify
```

This skips all pre-push hooks entirely.

## Troubleshooting

### Hook not running
Check if it's executable:
```bash
ls -l .git/hooks/pre-push
# Should show: -rwxr-xr-x (with x = executable)
```

Make it executable:
```bash
chmod +x .git/hooks/pre-push
# or
bash setup-hooks.sh
```

### Version not updating
The hook updates if commit message contains keywords. Check keywords list above.

### Quality checks fail
Run locally to debug:
```bash
pnpm lint      # Check SCSS linting
pnpm build     # Check CSS compilation
pnpm check     # Run both
```

Fix issues, then push again.

### Package.json conflicts
If the hook updates package.json and you have uncommitted changes:
```bash
# The hook will create a new commit with the version bump
# You may need to handle git rebase
git log --oneline    # Check recent commits
git status           # See current state
```

## Hook Modifications

To modify the pre-push hook:
```bash
nano .git/hooks/pre-push
```

Common modifications:
- **Change keywords** - Edit the `grep -iq` patterns
- **Add checks** - Add new validation commands
- **Disable auto-version** - Remove version update logic

**Note:** Hooks are local and not synced across clones. Document changes in this file.

## Sharing Hooks with Team

The hook files are in `.git/hooks/`, which is not committed to git.

To share hooks:
1. Store hook scripts in `scripts/git-hooks/` (or similar)
2. Create `setup-hooks.sh` to install them
3. Document in this file
4. Include installation in project README

Current setup:
- Hook file: `.git/hooks/pre-push` (local only)
- Setup script: `setup-hooks.sh` (committed to git)

## Hook Execution Order

When you run `git push`:
1. **pre-push** (this hook)
   - Detects version bump
   - Updates package.json
   - Runs quality checks
   - Allows or blocks push
2. Git push proceeds (if hook passes)

## Examples

### Adding a new feature
```bash
git commit -m "Add gap-0 spacing utility (new)"
git push
# Hook: Detects 'new' keyword → suggests FEATURE (minor)
# You: Press 'y' to confirm
# Hook: Updates v1.0.0 → v1.1.0
# Hook: Runs quality checks
# Hook: ✓ Push proceeds
```

### Bug fix
```bash
git commit -m "Fix flex-row centering bug"
git push
# Hook: Detects 'bug' keyword → suggests FIX (patch)
# You: Press 'y' to confirm
# Hook: Updates v1.1.0 → v1.1.1
# Hook: Runs quality checks
# Hook: ✓ Push proceeds
```

### Documentation (no version bump)
```bash
git commit -m "Update README with examples"
git push
# Hook: No keywords detected
# Hook: Asks for version type (1/2/3/4)
# You: Press '4' to skip
# Hook: Skips version bump
# Hook: Runs quality checks
# Hook: ✓ Push proceeds (version unchanged)
```

### Change your mind about version type
```bash
git commit -m "Add new grid system (feature)"
git push
# Hook: Detects 'feature' → suggests FEATURE (minor)
# You: Press 'c' to change manually
# Hook: Asks to select version type
# You: Select 1 for BREAKING (major) instead
# Hook: Updates v2.0.0 → v3.0.0
# Hook: Runs quality checks
# Hook: ✓ Push proceeds
```

## Disabling Hooks

To temporarily disable the pre-push hook:
```bash
rm .git/hooks/pre-push
```

To re-enable:
```bash
bash setup-hooks.sh
```

## Performance

The pre-push hook includes:
- **Version detection** - ~1ms
- **Package.json update** - ~10ms  
- **Quality checks** - ~30-60s (pnpm check runs lint + build)

Total time: **30-60 seconds** per push (primarily build time)

This is acceptable as it ensures quality.

## For CI/CD

If using GitHub Actions or CI/CD:
- Hooks run locally only
- CI/CD can use `npm version` for versioning
- CI/CD should run `pnpm check` before deploying

See project's CI/CD configuration for details.
