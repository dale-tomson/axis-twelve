# Axis Twelve - Agent Instructions

This folder contains all instructions and skills for AI agents working on the Axis Twelve project.

## Files

- `main-instructions.md` - Core instructions all agents must follow
- `skills/branching.md` - Branching strategy and Git workflow
- `skills/versioning.md` - Version bumping and release process
- `skills/documentation.md` - Documentation update requirements

## Usage

All agents should read and follow the instructions in this folder before making any changes.

## ⚠️ COMPLIANCE REQUIREMENT

**ALL AGENTS AND DEVELOPERS MUST:**

1. Read and follow `.agents/main-instructions.md` BEFORE making any changes
2. Create feature branches for ALL CI/CD changes
3. Update README module sizes on EVERY version bump
4. Update CHANGELOG on EVERY version bump
5. NEVER push CI/CD changes directly to `ver-2.x`

**FAILURE TO COMPLY WILL RESULT IN REJECTED COMMITS.**

## Quick Reference

| Task | Branch Type | Example |
|------|-------------|---------|
| CI/CD changes | `chore/...` | `chore/update-workflows` |
| New features | `feature/...` | `feature/add-carousel` |
| Bug fixes | `fix/...` | `fix/modal-issue` |
| Documentation | `docs/...` | `docs/update-readme` |
| Version bump | `chore/...` | `chore/bump-version-2-2-0` |

## Mandatory Steps for Common Tasks

### For CI/CD Changes:
1. ✅ Create feature branch
2. ✅ Make changes
3. ✅ Commit to feature branch
4. ✅ Push to feature branch
5. ✅ Create PR
6. ❌ NEVER push directly to `ver-2.x`

### For Version Bumps:
1. ✅ Update `package.json`
2. ✅ Build and get module sizes
3. ✅ Update `README.md` with sizes
4. ✅ Update `CHANGELOG.md`
5. ✅ Create feature branch
6. ✅ Commit all three files
7. ✅ Create PR

## Files That ALWAYS Require Feature Branch

- `.github/workflows/*.yml`
- `package.json` (scripts, version, config)
- Build configuration files
- Any CI/CD related files

**IF IT AFFECTS THE BUILD OR RELEASE PROCESS, IT NEEDS A FEATURE BRANCH + PR.**
