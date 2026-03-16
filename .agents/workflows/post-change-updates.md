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

- **`index.html`**: Update landing page features, installation guides, or size table.
- **`README.md`**: Update for major information changes (features, installation, usage).
- **`docs/v[VERSION]/*.md`**: Update framework documentation if API or usage changed.
- **`SCRIPTS.md`**: Update if new build commands were added.

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

#### 3.a Create New Version Changelog
Create a new detailed changelog file in `docs/changelogs/`:

```bash
# Create new version file (e.g., v2.0.1.md)
touch docs/changelogs/v[VERSION].md
```

**Requirements:**
- Detailed breakdown of features, bug fixes, and breaking changes.
- High-level "Impact" descriptions for users.

#### 3.b Update CHANGELOG.md
Update the main `CHANGELOG.md` file in the root:
1. **Add new version entry** at the top.
2. **Consolidate summaries**: Keep the root changelog scannable.
3. **Link to detailed log**: Point to the corresponding `docs/changelogs/v[VERSION].md` file.

### 4. Update Examples (if applicable)

If there were changes to SCSS source or CSS output:

**Check:**
- [ ] Do example HTML files in `docs/examples/` need updated class names?
- [ ] Do examples need new demonstrations?

**Actions:**
- Ensure all samples in `docs/examples/` are updated to reflect the latest CSS prefix (`.ax-`).
- Verify links from `index.html` to new examples.

### 5. Independent Deployment Check
Each version branch (e.g., `ver-2.x`) deploys independently to its own subpath (e.g., `/v2`).

- [ ] Ensure all changelogs are stored in `docs/changelogs/`.
- [ ] Verify that `deploy.yml` has the correct `destination_dir` for the branch.
- [ ] Ensure `index.html` uses relative paths for all assets and internal links.

### 6. Version Bumping
1. Manually update the version in the root `package.json`.
2. Run `bash project/scripts/update-version.sh` to synchronize versions across `index.html` and `docs/*.md`.
3. Ensure the `README.md` version badge matches.
4. Verify that the `CHANGELOG.md` header matches exactly.

## Verification Checklist

Before committing:

- [ ] New changelog file created in `docs/changelogs/v[VERSION].md`.
- [ ] `CHANGELOG.md` updated with new entry at top.
- [ ] Root `package.json` version bumped.
- [ ] `update-version.sh` executed successfully.
- [ ] Root `index.html` renders correctly in a browser.
- [ ] All links in README.md are valid.
