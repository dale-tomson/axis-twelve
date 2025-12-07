---
description: Post-request documentation and changelog update workflow
---

# Post-Request Documentation Update Workflow

This workflow ensures all documentation and changelogs are properly updated after implementing changes.

## When to Use This Workflow

Run this workflow after completing any feature implementation, bug fix, or significant change to the codebase.

## Steps

### 1. Update Documentation

Review and update relevant documentation files:

- **`README.md`**: Update for major information changes (features, installation, usage)
- **`docs/*.md`**: Update framework documentation if API or usage changed
- **`project/docs/SCRIPTS.md`**: Update if new commands were added
- **`project/docs/RELEASE.md`**: Update if release process changed

**Check:**
- [ ] Is there new functionality that needs documentation?
- [ ] Did any existing features change behavior?
- [ ] Are there new configuration options?
- [ ] Did folder structure change?

### 2. Update Changelogs

#### 2.a Create New Version Changelog

Create a new detailed changelog file in `project/docs/changelog/`:

```bash
# Create new version file (e.g., v1.0.2.md)
touch project/docs/changelog/v[VERSION].md
```

**Template structure:**
```markdown
# v[VERSION] - [Title]

**Date:** [Date]

## 🎯 [Category] (e.g., Features, Bug Fixes, Performance)

### [Subsection if needed]
- **Change description**: Details
- **Impact**: What this means for users

## 📦 [Another Category]
...
```

**Categories to consider:**
- ⚡ Performance & Optimization
- 🐛 Bug Fixes
- ✨ New Features
- 📱 Mobile/Responsive
- 🎨 Styling/UI
- 🔧 Configuration
- 📝 Documentation
- 🚨 Breaking Changes

#### 2.b Update CHANGELOG.md

Update the main `CHANGELOG.md` file:

1. **Add new version entry** at the top (after the header)
2. **Keep only the last 5 version entries** in the main changelog
3. **Link to detailed changelog** in `project/docs/changelog/`

**Format:**
```markdown
## [v[VERSION]](./project/docs/changelog/v[VERSION].md) - [Title]
**[Date]**

### [Category Icon] [Category Name]
- Brief summary point 1
- Brief summary point 2

---
```

**Remove older entries:**
- Keep versions: current + 4 previous
- Older versions remain in `project/docs/changelog/` directory
- Users can access full history via the changelog directory

### 3. Update Examples (if applicable)

If there were changes to SCSS source or CSS output:

**Check:**
- [ ] Do example HTML files need updated class names?
- [ ] Do examples need new demonstrations?
- [ ] Is `examples/style.css` still appropriate?
- [ ] Do inline styles in examples conflict with new framework styles?

**Files to review:**
- `examples/00-all-features-demo.html`
- `examples/01-grid-layouts.html`
- `examples/02-flexbox.html`
- `examples/03-centering.html`
- `examples/04-spacing.html`
- `examples/05-real-world.html`
- `examples/style.css`

**Actions:**
- Update class usage if framework classes changed
- Add new examples for new features
- Remove deprecated examples
- Ensure all examples still work correctly

### 4. Update README.md (Major Changes Only)

Update `README.md` only for information already present that needs updating:

**Update if:**
- [ ] File size changed significantly (update badges)
- [ ] New major features added (update Key Features section)
- [ ] Installation process changed
- [ ] Folder structure changed
- [ ] Quick start examples need updates
- [ ] Links are broken or outdated

**Do NOT add:**
- Minor feature details (those go in docs/)
- Detailed API changes (those go in docs/)
- Version-specific information (that goes in changelog)

### 5. Version Bumping

**DO NOT manually update version numbers.**

Version bumping is handled automatically by the pre-commit hook:
- `package.json` version field
- `package.json` version script

The pre-commit hook will:
1. Detect changes
2. Prompt for version bump (patch/minor/major)
3. Update version in package.json
4. Ensure changelog matches version

## Verification Checklist

Before committing:

- [ ] New changelog file created in `project/docs/changelog/v[VERSION].md`
- [ ] `CHANGELOG.md` updated with new entry at top
- [ ] `CHANGELOG.md` contains only last 5 versions
- [ ] Documentation updated for changed functionality
- [ ] Examples updated if framework classes changed
- [ ] `README.md` updated only for major information changes
- [ ] No manual version changes in package.json
- [ ] All links in documentation are valid
- [ ] No placeholder text like "TODO" or "TBD"

## Example Workflow Run

```bash
# 1. After implementing mobile responsiveness changes

# 2. Create new changelog
touch project/docs/changelog/v1.0.1.md
# Edit with detailed changes

# 3. Update CHANGELOG.md
# - Add v1.0.1 entry at top
# - Remove v0.0.3 entry (keeping only last 5)

# 4. Update docs if needed
# - Updated docs/responsive.md with new breakpoint info

# 5. Update examples
# - Added mobile media queries to all example files

# 6. Update README.md
# - Updated folder structure to include examples/style.css

# 7. Commit (pre-commit hook will handle version bump)
git add .
git commit -m "feat: add mobile responsiveness to all pages"
# Hook prompts: "Bump version? (patch/minor/major)"
# Select: minor (0.0.4 -> 0.1.0)
```

## Tips

- **Be concise in CHANGELOG.md**: Main changelog should be scannable
- **Be detailed in version files**: Individual version files can be comprehensive
- **Use consistent formatting**: Follow existing changelog style
- **Link between docs**: Cross-reference related documentation
- **Test examples**: Ensure all examples still work after changes
- **Keep history**: Never delete old changelog files, just remove from main CHANGELOG.md

## Common Mistakes to Avoid

❌ **Don't** manually update version in package.json  
✅ **Do** let pre-commit hook handle versioning

❌ **Don't** keep all versions in CHANGELOG.md  
✅ **Do** keep only last 5 versions, link to full history

❌ **Don't** add minor details to README.md  
✅ **Do** keep README.md high-level and scannable

❌ **Don't** forget to update examples  
✅ **Do** verify examples work with new changes

❌ **Don't** create changelog without version file  
✅ **Do** create both CHANGELOG.md entry and version file
