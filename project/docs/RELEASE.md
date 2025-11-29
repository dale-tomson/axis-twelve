# Release Guide

This guide explains how to create releases for Axis Twelve with automated asset packaging.

## Changelog Organization

Axis Twelve uses a structured changelog approach:

- **Main Changelog**: `CHANGELOG.md` - Overview of all versions with links
- **Version Files**: `project/docs/changelog/v{VERSION}.md` - Detailed notes per version

### Version File Structure

Each version file includes:
- **Release date** and type
- **What's Changed** - Features, improvements, fixes
- **Technical Details** - Architecture changes, performance improvements
- **Migration Guide** - Upgrade instructions and breaking changes (if any)
- **File Comparisons** - Size metrics showing optimization improvements
- **Benefits** - Why users should upgrade

### Example Version Files
- [v0.0.1.md](../changelog/v0.0.1.md) - Initial release
- [v0.0.2.md](../changelog/v0.0.2.md) - Performance & optimization

---

## Release Types

### 1. Git Tag Release (Manual GitHub Release)

Use this if you want to create the git tag locally and manage GitHub releases manually.

```bash
npm run release
```

**What it does:**
- ✅ Runs quality checks (lint + build)
- ✅ Creates dist tarball (`axis-twelve-dist-v{VERSION}.tar.gz`)
- ✅ Creates git tag `v{VERSION}`
- ✅ Shows instructions for pushing and creating GitHub release

**Next steps after:**
```bash
# Push the tag
git push origin v{VERSION}

# Create release on GitHub (manually or with gh CLI)
gh release create v{VERSION} --title "Axis Twelve v{VERSION}" -F CHANGELOG.md axis-twelve-dist-v{VERSION}.tar.gz
```

### 2. Automated GitHub Release

Use this for fully automated release creation with GitHub CLI.

```bash
npm run release:github
```

**Requirements:**
- GitHub CLI installed: https://cli.github.com/
- Authenticated: `gh auth login`

**What it does:**
- ✅ Runs quality checks
- ✅ Creates dist tarball
- ✅ Creates git tag
- ✅ Pushes tag to GitHub
- ✅ Creates GitHub release automatically
- ✅ Attaches dist tarball as asset
- ✅ Uses CHANGELOG.md for release notes
- ✅ Cleans up local tarball

## Release Workflow

1. **Create changelog entry** (create new version file)
   ```bash
   # Create: project/docs/changelog/v{VERSION}.md
   # Follow the format of previous versions (v0.0.1.md, v0.0.2.md)
   # Include: What's Changed, Key Features, Migration Guide (if needed), File Size Comparison
   ```

2. **Update main CHANGELOG.md** (link to new version)
   ```bash
   # Edit: CHANGELOG.md
   # Add entry to "Released Versions" section
   # Link to: ./project/docs/changelog/v{VERSION}.md
   # Update version table
   ```

3. **Update version in package.json** (or let pre-commit hook do it)
   ```bash
   # If you've modified SCSS, the pre-commit hook auto-bumps patch version
   git add src/scss/...
   git commit -m "Update styles"
   # Version bumped automatically
   ```

4. **Create the release**
   ```bash
   # Option A: Manual git tag
   npm run release

   # Option B: Fully automated (requires GitHub CLI)
   npm run release:github
   ```

5. **Verify release**
   - Visit: https://github.com/dale-tomson/axis-twelve/releases
   - Download and verify the dist tarball

## Release Assets

Each release includes:
- **`axis-twelve-dist-v{VERSION}.tar.gz`** - Compiled CSS and source files
  - Contains the complete `dist/` folder
  - Ready for production use
  - All SCSS compiled and minified

## Version Numbering

Versions follow semantic versioning: `MAJOR.MINOR.PATCH`

- **PATCH** - Auto-incremented on SCSS changes (pre-commit hook)
- **MINOR** - Manual bump for feature releases
- **MAJOR** - Manual bump for breaking changes

## Manual Version Update

If you need to manually update the version:

```bash
# Edit package.json version
# Then create a commit with the version bump
git add package.json
git commit -m "Bump to v1.0.0"

# Then run release
npm run release:github
```

## Troubleshooting

### "Tag already exists"
The tag `v{VERSION}` already exists. Either:
- Use a different version number
- Delete the tag: `git tag -d v{VERSION}`

### "Not authenticated with GitHub"
Run: `gh auth login`

### "Quality checks failed"
Fix linting and build errors:
```bash
pnpm lint:fix
pnpm build
```

## CI/CD Integration

For GitHub Actions, use the automated release script:

```yaml
- name: Create Release
  run: npm run release:github
  env:
    GH_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
