# Agent Instructions

**⚠️ IMPORTANT: All agent instructions have been moved to `.agents/` folder**

## Quick Start

1. **Read the main instructions first:**
   ```
   .agents/main-instructions.md
   ```

2. **Check the skills:**
   - `.agents/skills/branching.md` - Branching strategy
   - `.agents/skills/versioning.md` - Version bumping
   - `.agents/skills/documentation.md` - Documentation requirements

## Critical Rules

### ⚠️ NEVER Do This:
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
git checkout -b chore/update-workflows

# Make changes
git add .github/workflows/
git commit -m "chore: Update workflows"
git push origin chore/update-workflows

# Then create PR on GitHub
```

## Key Points

1. **CI/CD changes ALWAYS require feature branch + PR**
2. **README must be updated with module sizes on version bump**
3. **Follow the branching strategy in `.agents/skills/branching.md`**
4. **Update documentation per `.agents/skills/documentation.md`**

## Questions?

Check `.agents/main-instructions.md` for detailed instructions.
