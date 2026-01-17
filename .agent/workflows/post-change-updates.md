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

- **`README.md`**: Update for major information changes (features, installation, usage).
- **`docs-viewer/content/docs/*.md`**: Update framework documentation if API or usage changed.
- **`SCRIPTS.md`**: Update if new build commands were added.
- **`docs-viewer/README.md`**: Update if deployment or setup process changed.

**Check:**
- [ ] Is there new functionality that needs documentation?
- [ ] Did any existing features change behavior?
- [ ] Are there new configuration options?
- [ ] Did folder structure change?

### 2. Determine if Version Bump is Needed

**CRITICAL: Only create changelog versions for framework changes!**

**Create new version (changelog + version bump) if:**
- ✅ SCSS source files changed (`src/**/*.scss`)
- ✅ CSS output changed (`dist/**/*.css`)
- ✅ Framework functionality changed (grid, flexbox, spacing, etc.)
- ✅ Breaking changes to class names (e.g., `.ax-` prefix)
- ✅ New framework modules or components added

**DO NOT create new version for:**
- ❌ Documentation updates only
- ❌ Tooling changes (scripts, CLI, workflows)
- ❌ Configuration changes (.gitignore, .npmrc)
- ❌ Code cleanup without functional changes

### 3. Update Changelogs (Only if Version Bump Needed)

#### 2.a Create New Version Changelog
Create a new detailed changelog file in `docs-viewer/content/changelogs/`:

```bash
# Create new version file (e.g., v2.0.1.md)
touch docs-viewer/content/changelogs/v[VERSION].md
```

**Requirements:**
- Detailed breakdown of features, bug fixes, and breaking changes.
- High-level "Impact" descriptions for users.

#### 2.b Update CHANGELOG.md
Update the main `CHANGELOG.md` file in the root:
1. **Add new version entry** at the top.
2. **Consolidate summaries**: Keep the root changelog scannable.
3. **Reference the viewer**: Mention that full history is available in the Interactive Documentation.

### 4. Update Examples (if applicable)

If there were changes to SCSS source or CSS output:

**Check:**
- [ ] Do example HTML files in `docs-viewer/content/examples/` need updated class names?
- [ ] Do examples need new demonstrations?
- [ ] Are the SVG icons still rendering correctly?

**Actions:**
- Use the **centralized layout system** (`views/examples.twig`) for all new examples.
- Ensure only component markup is added to `.html` files (no `<html>`/`<body>`).

### 5. Independent Deployment Check
The `docs-viewer` is designed for standalone deployment (e.g., GitHub Pages).

- [ ] Ensure all changelogs are stored in `docs-viewer/content/changelogs/`.
- [ ] Verify that `docs-viewer/src/services/content.js` uses internal relative paths.
- [ ] If changing metadata, update both root `package.json` and ensure consistency with the home page logic.

### 6. Version Bumping
1. Manually update the version in the root `package.json`.
2. Ensure the `README.md` version badge matches.
3. Verify that the `CHANGELOG.md` header matches exactly.

## Verification Checklist

Before committing:

- [ ] New changelog file created in `docs-viewer/content/changelogs/v[VERSION].md`.
- [ ] `CHANGELOG.md` updated with new entry at top.
- [ ] Root `package.json` version bumped.
- [ ] Examples updated if framework classes changed.
- [ ] `docs-viewer/node app.js` runs without error.
- [ ] All links in README.md are valid.
