# Versioning and Release Process

## Version Number Format

Semantic Versioning: `MAJOR.MINOR.PATCH`

- **MAJOR** (2.0.0): Breaking changes
- **MINOR** (2.1.0): New features, backward compatible
- **PATCH** (2.0.1): Bug fixes, backward compatible

## When to Bump Version

### Bump PATCH (2.0.x → 2.0.y)
- Bug fixes
- Performance improvements
- Security patches
- No new features

### Bump MINOR (2.x.0 → 2.y.0)
- New features (backward compatible)
- New modules
- New utility classes
- Deprecations (with warnings)

### Bump MAJOR (x.0.0 → y.0.0)
- Breaking changes
- Removed features
- Major refactoring

## Version Bump Steps

### 1. Update package.json

```json
{
  "name": "axis-twelve",
  "version": "2.1.0"  // ← Update this
}
```

### 2. Update README.md

#### Update version badge (if present):
```markdown
![Version](https://img.shields.io/badge/version-2.1.0-blue?style=flat-square)
```

#### Update module sizes:
```bash
# Build all modules
pnpm build

# Get sizes
ls -lh dist/modules/*.min.css
```

Update the module table in README with actual sizes:
```markdown
| Module | Size (min) | Description |
|--------|------------|-------------|
| **axis-core** | 4.3KB | Core & reset |
| **axis-layout** | 68KB | Grid, flexbox, etc. |
```

### 3. Update CHANGELOG.md

```markdown
## [2.1.0] - 2026-03-17

### Added
- New utility classes (display, typography, borders, etc.)
- New components (alerts, badges, progress, spinners)
- Navigation components (navbar, tabs, breadcrumb, pagination)

### Changed
- Updated Node.js to v24

### Fixed
- Fixed workflow syntax errors
```

### 4. Create Commit

```bash
git add package.json README.md CHANGELOG.md
git commit -m "chore: Bump version to 2.1.0"
```

### 5. Push and PR

```bash
git checkout -b chore/bump-version-2-1-0
# Make changes
git push origin chore/bump-version-2-1-0
# Create PR on GitHub
```

### 6. Merge and Release

After PR merge:
- Auto-tag workflow creates git tag
- Release workflow publishes to GitHub Releases
- NPM package is published

## Module Size Updates

### When to Update:
- ✅ After adding new modules
- ✅ After major refactoring
- ✅ On every version bump
- ✅ When module size significantly changes

### How to Get Sizes:

```bash
# Build all
pnpm build

# Get individual module sizes
ls -lh dist/modules/*.min.css

# Get main bundle size
ls -lh dist/*.min.css
```

### Update README Table:

Format:
```markdown
| Module | Size (min) | Description |
|--------|------------|-------------|
| **axis-buttons** | 6.2KB | Button components |
```

Full bundle:
```markdown
**Full Framework Bundle:** 82KB minified (108KB uncompressed)
```

## Common Mistakes

❌ **DON'T:**
- Bump version without updating README
- Forget to update module sizes
- Skip CHANGELOG entry
- Push version bump directly to ver-2.x

✅ **DO:**
- Always update README with module sizes
- Update CHANGELOG with changes
- Use feature branch for version bump
- Follow semantic versioning
- Test build before committing

## Examples

### Good Version Bump:
```bash
git checkout ver-2.x
git checkout -b chore/bump-version-2-1-0

# Update package.json, README, CHANGELOG
git add package.json README.md CHANGELOG.md
git commit -m "chore: Bump version to 2.1.0"
git push origin chore/bump-version-2-1-0
# Create PR
```

### Bad Version Bump:
```bash
# ❌ DON'T DO THIS:
git checkout ver-2.x
# Edit package.json
git commit -m "update version"
git push origin ver-2.x
```
