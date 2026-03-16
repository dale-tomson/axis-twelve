# Version Management Guide

This document describes how version management works in Axis Twelve and the tools available for version updates.

## Quick Start

To bump the version, use the helper script:

```bash
# Interactive mode
bash project/scripts/bump-version.sh

# Or specify version type
bash project/scripts/bump-version.sh patch   # 2.0.2 -> 2.0.3
bash project/scripts/bump-version.sh minor   # 2.0.2 -> 2.1.0
bash project/scripts/bump-version.sh major   # 2.0.2 -> 3.0.0

# Or specify exact version
bash project/scripts/bump-version.sh 2.1.0
```

## Version Update Tools

### 1. bump-version.sh (Recommended)

**Location:** `project/scripts/bump-version.sh`

**Purpose:** Automates the entire version bumping process

**What it does:**

- Reads current version from `package.json`
- Prompts for version bump type (patch/minor/major) or specific version
- Updates `package.json` version
- Runs `update-version.sh` to sync all references
- Provides next steps checklist

**Example usage:**

```bash
# Bump for bug fix
bash project/scripts/bump-version.sh patch

# Bump for new features
bash project/scripts/bump-version.sh minor

# Bump for breaking changes
bash project/scripts/bump-version.sh major
```

### 2. update-version.sh

**Location:** `project/scripts/update-version.sh`

**Purpose:** Synchronizes version number across all project files

**What it does:**

- Reads version from `package.json`
- Updates README.md version badge
- Updates index.html (if exists)
- Updates docs/\*.md files
- Validates version format (semver)

**Example usage:**

```bash
# After manually updating package.json
bash project/scripts/update-version.sh
```

## Version Files

The following files contain version information:

| File           | Purpose             | Auto-updated            |
| -------------- | ------------------- | ----------------------- |
| `package.json` | **Source of truth** | ✅ by bump-version.sh   |
| `README.md`    | Version badge       | ✅ by update-version.sh |
| `index.html`   | HTML title/meta     | ✅ if exists            |
| `docs/*.md`    | Documentation       | ✅ by update-version.sh |
| `CHANGELOG.md` | Version history     | ⚠️ Manual               |
| `dist/*.css`   | Build headers       | ✅ by build process     |

## Semantic Versioning

Axis Twelve follows [Semantic Versioning](https://semver.org/):

**Format:** `MAJOR.MINOR.PATCH` (e.g., `2.0.2`)

### When to bump:

**MAJOR** (breaking changes):

- Breaking API changes
- Removed components or utilities
- Changed class names
- Changed behavior of existing components

**MINOR** (new features):

- New components or utilities
- New features (backward compatible)
- New SCSS variables or mixins
- New responsive breakpoints

**PATCH** (bug fixes):

- Bug fixes
- Documentation updates
- Build process improvements
- Minor CSS fixes

## Manual Version Update

If you prefer manual control:

1. **Update package.json:**

   ```json
   {
     "version": "2.1.0"
   }
   ```

2. **Sync all references:**

   ```bash
   bash project/scripts/update-version.sh
   ```

3. **Update CHANGELOG.md:**
   Add entry for new version

4. **Commit and push:**

   ```bash
   git add .
   git commit -m "Bump version to 2.1.0"
   git push
   ```

5. **Auto-tag workflow runs:**
   - Creates git tag `v2.1.0`
   - Triggers release workflow
   - Publishes to GitHub + NPM

## Automated Release Process

After version bump and push:

1. **Auto-tag workflow** (`auto-tag.yml`):
   - Detects `package.json` change
   - Checks if tag exists
   - Creates tag if needed
   - Pushes tag to remote

2. **Release workflow** (`release.yml`):
   - Triggered by tag push
   - Builds all CSS modules
   - Creates GitHub Release
   - Publishes to NPM

## Version History

See [CHANGELOG.md](../CHANGELOG.md) for complete version history.

## Troubleshooting

### Tag already exists

If you get "tag already exists" error:

```bash
# Delete local tag
git tag -d v2.1.0

# Delete remote tag
git push origin :refs/tags/v2.1.0

# Then push again
git push
```

### NPM publish fails

Check:

1. Version number is higher than published version
2. NPM token is valid in GitHub Secrets
3. NPM registry status

### Build fails

Run locally to debug:

```bash
pnpm install
pnpm lint
pnpm build
```

## Best Practices

1. **Always update CHANGELOG.md** - Keep users informed
2. **Use semantic versioning** - Follow MAJOR.MINOR.PATCH
3. **Test before releasing** - Run `pnpm check` before bump
4. **Document breaking changes** - Help users migrate
5. **Tag releases** - Automated by workflow
6. **Keep dist/ clean** - Not in git, built in CI

## Related Documentation

- [Release Workflow](.agent/workflows/release-workflow.md)
- [CI/CD Configuration](../.github/workflows/)
- [CHANGELOG.md](../CHANGELOG.md)
