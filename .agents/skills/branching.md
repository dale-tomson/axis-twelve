# Branching Strategy

## Overview

This repository follows a strict branching and release strategy to ensure stability and proper CI/CD workflows.

## Branch Structure

### Main Branches

- `main` - Production-ready code (if applicable)
- `ver-2.x` - Current development branch for v2.x releases

### Feature Branches

Format: `<type>/<description>`

Examples:
- `feature/phase-1-utilities-components`
- `fix/modal-scroll-issue`
- `chore/update-node-version`
- `docs/update-readme`

### Branch Naming Conventions

| Type     | Purpose                          | Example                           |
| -------- | -------------------------------- | --------------------------------- |
| `feature` | New features or major additions  | `feature/dark-mode`               |
| `fix`    | Bug fixes                        | `fix/button-focus-state`          |
| `chore`  | Maintenance, config, dependencies | `chore/update-workflows`          |
| `docs`   | Documentation only               | `docs/add-examples`               |
| `refactor` | Code refactoring (no features) | `refactor/grid-system`            |
| `test`   | Adding or updating tests         | `test/add-utility-tests`          |

## CI/CD Workflow

### Automated Workflows

1. **PR Checks** (`pr-checks.yml`)
   - Triggers: Pull requests to `ver-2.x`
   - Runs: Linting, building, tests
   - Node: v24

2. **Release** (`release.yml`)
   - Triggers: Tag push (v*)
   - Runs: Build, GitHub Release, NPM publish
   - Node: v24

3. **Auto-Tag** (`auto-tag.yml`)
   - Triggers: package.json version change on `ver-2.x`
   - Creates git tag if doesn't exist

### Branching Rules

**⚠️ IMPORTANT: CI/CD files MUST go through feature branch + PR**

**NEVER push CI/CD changes directly to `ver-2.x`!**

#### Correct Workflow:

```bash
# 1. Create feature branch from ver-2.x
git checkout ver-2.x
git pull origin ver-2.x
git checkout -b chore/update-node-version

# 2. Make changes
# Edit .github/workflows/*.yml
git add .github/workflows/
git commit -m "chore: Update Node.js to v24"

# 3. Push and create PR
git push origin chore/update-node-version
# Then create PR on GitHub

# 4. After PR review and merge, delete branch
```

#### Incorrect Workflow:

```bash
# ❌ DON'T DO THIS:
git checkout ver-2.x
# Edit workflows directly
git commit -m "chore: Update workflows"
git push origin ver-2.x
```

## Release Process

### Version Bumping

1. Update `package.json` version:
   - Patch (2.0.x → 2.0.y): Bug fixes
   - Minor (2.x.0 → 2.y.0): New features (backward compatible)
   - Major (x.0.0 → y.0.0): Breaking changes

2. Update `CHANGELOG.md` with new version

3. Update README module sizes if applicable

4. Create PR for version bump

5. Merge PR to `ver-2.x`

6. Auto-tag workflow creates git tag

7. Release workflow publishes to GitHub & NPM

### Release Checklist

- [ ] Version updated in `package.json`
- [ ] README updated with new module sizes
- [ ] CHANGELOG.md updated
- [ ] All tests passing
- [ ] PR reviewed and merged
- [ ] Git tag created (automatic or manual)
- [ ] GitHub Release created (automatic)
- [ ] NPM package published (automatic)

## Common Mistakes to Avoid

❌ **DON'T:**
- Push CI/CD changes directly to `ver-2.x`
- Skip PR review for workflow changes
- Forget to update README module sizes
- Bump version without CHANGELOG update
- Push tags without going through release process

✅ **DO:**
- Always create feature branch for CI/CD changes
- Use descriptive branch names
- Update documentation with code changes
- Run tests before pushing
- Follow commit message conventions

## Resources

- [GitHub Flow](https://guides.github.com/introduction/flow/)
- [Conventional Commits](https://www.conventionalcommits.org/)
- [Semantic Versioning](https://semver.org/)
