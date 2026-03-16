# Main Instructions for Axis Twelve Development

## ⚠️ CRITICAL: Branching & CI/CD Rules

### 🚫 NEVER Do This:
```bash
# WRONG - Direct push to ver-2.x for CI/CD changes
git checkout ver-2.x
# Edit .github/workflows/*.yml
git commit -m "chore: update workflows"
git push origin ver-2.x
```

### ✅ Always Do This:
```bash
# CORRECT - Feature branch for CI/CD changes
git checkout ver-2.x
git pull
git checkout -b chore/update-workflows  # Create feature branch FIRST

# Make changes
# Edit .github/workflows/*.yml

git add .github/workflows/
git commit -m "chore: Update workflows"
git push origin chore/update-workflows

# Then create PR on GitHub
```

## Branching Strategy

### For CI/CD Changes (workflows, package.json, build config):
1. **ALWAYS** create feature branch: `chore/<description>`
2. Make changes on feature branch
3. Commit and push
4. Create PR
5. Wait for review and merge
6. Delete branch after merge

### For Features:
1. Create feature branch: `feature/<description>`
2. Implement feature
3. Test locally
4. Create PR
5. Merge after review

### For Documentation:
1. Create branch: `docs/<description>`
2. Update docs
3. Create PR
4. Merge

## Version Bump Protocol

When updating version in `package.json`:

1. **Update package.json:**
   - Change version (e.g., "2.1.0" → "2.2.0")

2. **Update README.md:**
   - Update version badge if applicable
   - **Update module sizes** (rebuild and get new sizes)
   - Verify all examples still work

3. **Update CHANGELOG.md:**
   - Add new version section
   - List changes under version

4. **Create commit:**
   ```bash
   git commit -m "chore: Bump version to 2.2.0"
   ```

5. **Push and PR:**
   - Push to feature branch
   - Create PR
   - Merge to ver-2.x

6. **Auto-release:**
   - Auto-tag workflow will create git tag
   - Release workflow will publish

## README Update Requirements

### MUST update README when:
- ✅ Adding new CSS modules
- ✅ Module sizes change (after rebuild)
- ✅ New features added
- ✅ Version is bumped
- ✅ Breaking changes

### How to Update Module Sizes:

1. Build all modules:
   ```bash
   pnpm build
   ```

2. Get sizes:
   ```bash
   ls -lh dist/modules/*.min.css
   ```

3. Update table in README:
   ```markdown
   | Module | Size (min) | Description |
   |--------|------------|-------------|
   | **axis-buttons** | 6.2KB | Description |
   ```

4. Update full framework size:
   ```markdown
   **Full Framework Bundle:** 82KB minified
   ```

## Commit Message Guidelines

### Format:
```
<type>(<scope>): <description>

[optional body]

[optional footer]
```

### Types:
- `feat` - New feature
- `fix` - Bug fix
- `chore` - Maintenance (includes CI/CD, config)
- `docs` - Documentation only
- `refactor` - Code refactoring
- `test` - Tests
- `ci` - CI configuration
- `build` - Build system

### Examples:

✅ Good:
```
chore: Update Node.js to v24
chore(ci): Update workflows for better caching
feat(components): Add carousel component
docs(readme): Update module sizes for v2.1.0
fix(buttons): Correct focus state outline color
```

❌ Bad:
```
update stuff
fix thing
changes
wip
```

## File Organization

### CI/CD Files (Require Feature Branch):
- `.github/workflows/*.yml`
- `package.json` (scripts, build config)
- Build scripts (`project/scripts/`)

### Documentation Files:
- `README.md`
- `CHANGELOG.md`
- `docs/`

### Source Files:
- `src/` - SCSS source
- `dist/` - Built CSS (auto-generated)

## Pre-Commit Checklist

Before committing, verify:

- [ ] Branch name follows convention
- [ ] Changes are on correct branch
- [ ] Linting passes: `pnpm lint`
- [ ] Build passes: `pnpm build`
- [ ] README updated (if applicable)
- [ ] Module sizes updated (if changed)
- [ ] Commit message follows convention

## Common Scenarios

### Scenario 1: Update Workflows
```bash
# 1. Create branch
git checkout ver-2.x
git checkout -b chore/update-workflows

# 2. Edit workflows
# Edit .github/workflows/*.yml

# 3. Commit
git add .github/workflows/
git commit -m "chore: Update workflows"

# 4. Push and PR
git push origin chore/update-workflows
# Create PR on GitHub
```

### Scenario 2: Bump Version
```bash
# 1. Create branch
git checkout ver-2.x
git checkout -b chore/bump-version-2-2-0

# 2. Update package.json version to "2.2.0"

# 3. Update README (module sizes if changed)

# 4. Update CHANGELOG.md

# 5. Commit
git add package.json README.md CHANGELOG.md
git commit -m "chore: Bump version to 2.2.0"

# 6. Push and PR
git push origin chore/bump-version-2-2-0
```

### Scenario 3: Add New Module
```bash
# 1. Create branch
git checkout ver-2.x
git checkout -b feature/add-new-module

# 2. Create module files
# src/builds/axis-newmodule.scss

# 3. Update package.json exports

# 4. Build and get size
pnpm build:newmodule
ls -lh dist/modules/axis-newmodule.min.css

# 5. Update README with new module and size

# 6. Commit and PR
git add .
git commit -m "feat: Add new module"
git push origin feature/add-new-module
```

## Questions?

If unsure:
1. Check `skills/branching.md`
2. Look at recent commits for examples
3. Ask maintainers

## Remember

- **CI/CD changes ALWAYS require feature branch + PR**
- **README must be updated with module sizes**
- **Version bumps need README + CHANGELOG updates**
- **Never push directly to ver-2.x for CI/CD**
