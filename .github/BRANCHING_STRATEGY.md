# Branching Strategy

**⚠️ IMPORTANT: Complete branching strategy is in `.agents/skills/branching.md`**

## Quick Reference

### Branch Naming

```
<type>/<description>
```

### Types

- `feature` - New features
- `fix` - Bug fixes
- `chore` - Maintenance, CI/CD
- `docs` - Documentation
- `refactor` - Code refactoring
- `test` - Tests

### Examples

```bash
feature/add-carousel-component
fix/modal-z-index-issue
chore/update-node-to-24
docs/add-branching-guide
```

## Critical Rules

1. **CI/CD changes MUST use feature branches**
2. **NEVER push workflow changes directly to `ver-2.x`**
3. **Always create PR for review**
4. **Update README with module sizes on version bump**

## Correct Workflow

```bash
# 1. Create feature branch
git checkout ver-2.x
git checkout -b chore/update-workflows

# 2. Make changes
# Edit files...

# 3. Commit and push
git add .
git commit -m "chore: Update workflows"
git push origin chore/update-workflows

# 4. Create PR on GitHub
# 5. Wait for review and merge
# 6. Delete branch
```

## Full Documentation

See `.agents/skills/branching.md` for complete strategy.
